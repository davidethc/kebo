import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/di/injection.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/navigation/route_generator.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';
import 'package:kebo_app/features/dev/dev_debug_screen.dart';
import 'package:kebo_app/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:kebo_app/features/home/presentation/widgets/item_event.dart';
import '../widgets/item_home.dart';
import '../widgets/loading_event.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late HomeCubit cubit;
  UserProvider get userProvider => getIt<UserProvider>();
  String get urlKeboScrore => 'https://www.kebo.app/blog';
  @override
  void initState() {
    super.initState();
    cubit = context.read<HomeCubit>();
    cubit.initial();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  void _blocListener(BuildContext context, HomeState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: _blocListener,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            DateFormat("MMM dd, yyyy").format(DateTime.now()),
                            style: context.theme.textTheme.bodyLarge?.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.accentPrimary),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                        GestureDetector(
                          onTap: () {
                            if (kDebugMode) {
                              rootNavigatorKey.currentState?.push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DevDebugScreen()));
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              S.current.helloX(userProvider.currentUser.name),
                              style: context.theme.textTheme.bodyLarge
                                  ?.copyWith(fontSize: 24),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: const AlignmentDirectional(-1, 1),
                    children: [
                      InkWell(
                          onTap: () => context.navigate(AppScreens.profile),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: CachedImage(
                              imageUrl: userProvider.currentUser.icon.trim(),
                              width: 48,
                              height: 48,
                            ),
                          )),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: const Color(0xFF7EE4F0),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation1']!),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 20),
              _buildScore(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  S.current.metrics,
                  style:
                      context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              const SizedBox(height: 10),
              _buildBalance(),
              const SizedBox(height: 20),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, HomeState state) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      ItemHome.isChart(
                        color: const Color(0xff1e87fd),
                        data: state.dataIncome,
                        title: S.current.income,
                        description: DateTime.now().appFormatMMM,
                        amount:
                            '\$${(state.dataIncome?.currentMonth ?? 0).formatNumber()}',
                      ),
                      const SizedBox(width: 10),
                      ItemHome.isChart(
                        data: state.dataExpense,
                        color: const Color(0xffaf8eff),
                        title: S.current.expenses,
                        description: DateTime.now().appFormatMMM,
                        amount:
                            '\$${(state.dataExpense?.currentMonth ?? 0).formatNumber()}',
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
              const SizedBox(height: 10),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, HomeState state) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      ItemHome.icon(
                        color: const Color(0xff4c5a81),
                        title: S.current.savings,
                        description: S.current.synchronized,
                        amount: '\$ ${state.savings.item2.formatNumber()}',
                        value: state.savings.item2 / state.savings.item1,
                      ),
                      const SizedBox(width: 10),
                      ItemHome(
                        color: const Color(0xff8b80f8),
                        title: S.current.goals,
                        description: S.current.synchronized,
                        amount: '\$ ${state.goals.item2.formatNumber()}',
                        value: state.goals.item2 / state.goals.item1,
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
              const SizedBox(height: 20),
              // _buildEvent(),
              // const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEvent() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, HomeState state) => state.isLoadingEvent
          ? const LoadingEvent()
          : Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    state.events.length,
                    (index) => Container(
                      height: 10,
                      width: 10,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: AppColors.accentPrimary
                            .withOpacity(state.currentIndex == index ? 1 : 0.1),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 325,
                    viewportFraction: 1,
                    initialPage: state.currentIndex,
                    onPageChanged: (index, reason) =>
                        cubit.onChangedPage(index),
                  ),
                  items: state.events.map((e) => ItemEvent(event: e)).toList(),
                ),
              ],
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }

  Widget _buildBalance() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, HomeState state) => Container(
        height: 100,
        width: context.w,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.current.balanceGeneral,
              style: context.theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white),
            ),
            const SizedBox(height: 2),
            Text(
              '\$${state.balance.formatNumber()}',
              style: context.theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }

  Widget _buildScore() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, HomeState state) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: const Color(0xfff5f6fa),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Container(
              height: 63,
              width: 63,
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    AppAssetImages.icPolygon,
                    height: 63,
                    width: 63,
                  ),
                  Center(
                      child: Text('${state.score}',
                          style: context.theme.textTheme.bodyLarge?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white)))
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.current.keboScore,
                      style: context.theme.textTheme.bodyLarge
                          ?.copyWith(fontSize: 16, color: AppColors.black)),
                  Text(S.current.baseYourFinancial(state.score),
                      style: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 12, color: const Color(0xff828282))),
                  GestureDetector(
                    onTap: () => context.navigate(AppScreens.webviewLink,
                        arguments: urlKeboScrore),
                    child: Text(S.current.howToImprove,
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.accentPrimary)),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-70.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };
}
