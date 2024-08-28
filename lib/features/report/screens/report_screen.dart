import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/enums/tab_report_enum.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/di/injection.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';
import 'package:kebo_app/core/utils/widgets/shimmer/shimmer_widget.dart';
import 'package:kebo_app/features/report/cubit/report/report_cubit.dart';
import 'package:kebo_app/features/report/widgets/bar_chart_widget.dart';
import '../widgets/income_chart_widget.dart';
import '../widgets/line_chart_widget.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late ReportCubit cubit;
  UserProvider get userProvider => getIt<UserProvider>();
  late TabController _tabController;
  List<Tab> get tabs => [
        Tab(
          iconMargin: EdgeInsets.zero,
          text: S.current.expenses,
          icon: const Icon(Icons.money_off_csred),
        ),
        Tab(
          iconMargin: EdgeInsets.zero,
          text: S.current.income,
          icon: const Icon(Icons.monetization_on),
        ),
      ];
  @override
  void initState() {
    super.initState();
    cubit = context.read<ReportCubit>();
    _tabController = TabController(length: tabs.length, vsync: this);
    cubit.initial();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  void _blocListener(BuildContext context, ReportState state) {
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
    return BlocListener<ReportCubit, ReportState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: const AppAppBar(title: 'Reportes 📈', centerTitle: true),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                dividerHeight: 1,
                indicatorWeight: 2,
                labelStyle:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
                labelColor: AppColors.accentPrimary,
                unselectedLabelColor: Colors.black,
                tabs: tabs,
              ),
            ),
            const SizedBox(height: 14),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  _buildChart(),
                  _buildIncome(),
                ],
              ),
            )
          ],
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
      ),
    );
  }

  Widget _buildIncome() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, ReportState state) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              if (state.isLoadingIncome)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child:
                      ShimmerWidget.rectangular(height: 200, width: context.w),
                ),
              if (!state.isLoadingIncome && state.dataIncome.isNotEmpty)
                IncomeChartScreen(
                  data: state.dataIncome,
                ),
              if (state.dataIncome.isEmpty && !state.isLoadingIncome)
                Center(child: Text(S.current.noRecord)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChart() {
    return BlocBuilder<ReportCubit, ReportState>(
      builder: (context, ReportState state) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Stack(
                children: [
                  if (state.isLoading)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: ShimmerWidget.rectangular(
                          height: 500, width: context.w),
                    ),
                  if (!state.isLoading && state.dataLine.isNotEmpty)
                    LineChartWidget(data: state.dataLine),
                  if (state.dataLine.isEmpty && !state.isLoading)
                    Center(child: Text(S.current.noRecord)),
                ],
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  if (state.isLoadingBar)
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: ShimmerWidget.rectangular(
                            height: 500, width: context.w)),
                  if (!state.isLoadingBar && state.dataBar.isNotEmpty)
                    BarChartWidget(data: state.dataBar),
                  if (!state.isLoadingBar && state.dataBar.isEmpty)
                    Center(child: Text(S.current.noRecord)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
    'containerOnPageLoadAnimation2': AnimationInfo(
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
