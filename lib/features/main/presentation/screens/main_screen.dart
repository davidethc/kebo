import 'package:kebo_app/core/data/enums/enums.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:kebo_app/core/utils/widgets/bottom_navigation/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/features/ai/cubit/ai/ai_cubit.dart';
import 'package:kebo_app/features/ai/screens/ai_screen.dart';
import 'package:kebo_app/features/analytic/cubit/analytic/analytic_cubit.dart';
import 'package:kebo_app/features/analytic/screens/analytic_screen.dart';
import 'package:kebo_app/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:kebo_app/features/report/cubit/report/report_cubit.dart';
import 'package:kebo_app/features/report/screens/report_screen.dart';
import 'package:kebo_app/features/home/presentation/screens/home_screen.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/transaction/transaction_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/screens/transaction_screen.dart';
import '../../../../core/di/injection.dart';
import '../cubit/main/main_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  late MainCubit cubit;

  @override
  void initState() {
    super.initState();
    addAnimation();
    cubit = context.read<MainCubit>();
    LoggerUtils.d('mainLog ${DateTime.now().millisecondsSinceEpoch}');
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MainCubit, MainState>(
      listener: _blocListener,
      child: Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        body: BlocBuilder<MainCubit, MainState>(
            builder: (context, MainState state) => screens[state.currentIndex]),
        bottomNavigationBar: _buildNavigationBar(),
      ),
    );
  }

  List<Widget> get screens => [
        _getTabWithCubit<HomeCubit>(const HomeScreen()),
        _getTabWithCubit<TransactionCubit>(const TransactionScreen()),
        _getTabWithCubit<ReportCubit>(const ReportScreen()),
        _getTabWithCubit<AnalyticCubit>(const AnalyticScreen()),
        _getTabWithCubit<AICubit>(const AIScreen()),
      ];

  void _blocListener(BuildContext context, MainState state) {}

  List<BottomBar> get icons => BottomBar.values;

  Widget _buildNavigationBar() {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, MainState state) => AnimatedBottomNavigationBar(
        icons: icons,
        backgroundColor: const Color.fromARGB(255, 239, 25, 25),
        activeIndex: state.currentIndex,
        activeColor: const Color.fromARGB(255, 210, 71, 192),
        splashColor: const Color.fromARGB(255, 202, 62, 190),
        notchAndCornersAnimation: animation,
        splashSpeedInMilliseconds: 300,
        notchMargin: 10,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        onTap: (index) => cubit.onChangedTab(index),
      ),
    );
  }

  Widget _getTabWithCubit<Cubit extends BlocBase<Object?>>(Widget child) =>
      BlocProvider(create: (_) => getIt<Cubit>(), child: child);

  void addAnimation() {
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    curve = CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
  }
}
