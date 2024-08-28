import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/di/injection.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';
import 'package:kebo_app/features/analytic/cubit/analytic/analytic_cubit.dart';
import 'package:kebo_app/features/analytic/widgets/info_analytic.dart';

class AnalyticScreen extends StatefulWidget {
  const AnalyticScreen({super.key});

  @override
  State<AnalyticScreen> createState() => _AnalyticScreenState();
}

class _AnalyticScreenState extends State<AnalyticScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late AnalyticCubit cubit;
  UserProvider get userProvider => getIt<UserProvider>();
  late TabController _tabController;

  List<Tab> get tabs => [
        Tab(text: 'Analysis 💡'),
        Tab(text: 'Sugerencias 👩‍🏫'),
      ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
    cubit = context.read<AnalyticCubit>();
    cubit.initial();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _blocListener(BuildContext context, AnalyticState state) {
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
    return BlocListener<AnalyticCubit, AnalyticState>(
      listener: _blocListener,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _buildProfile().animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                labelColor: AppColors.accentPrimary,
                unselectedLabelColor: Colors.black,
                tabs: tabs,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    BlocBuilder<AnalyticCubit, AnalyticState>(
                      builder: (context, AnalyticState state) => InfoAnalytic(
                        description:
                            'This is an automatic analysis conducted with Artificial Intelligence.',
                        isLoading: state.isLoading,
                        data: state.analytics,
                        isAnalytic: true,
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                    BlocBuilder<AnalyticCubit, AnalyticState>(
                      builder: (context, AnalyticState state) => InfoAnalytic(
                        description:
                            'This is an automatic analysis conducted with Artificial Intelligence',
                        isLoading: state.isLoadingSuggest,
                        data: state.suggestions,
                        isAnalytic: false,
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    border:
                        Border.all(color: AppColors.accentPrimary, width: 2)),
                child: CachedImage(
                  imageUrl: userProvider.currentUser.icon.trim(),
                  width: 44,
                  height: 44,
                )),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.current.hello,
                style: context.theme.textTheme.bodyLarge
                    ?.copyWith(fontSize: 24, color: AppColors.black),
              ),
              Text(
                S.current.yourRecentActivity,
                style:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.698, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };
}
