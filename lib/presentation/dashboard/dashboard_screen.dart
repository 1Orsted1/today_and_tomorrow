import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/presentation/core/app_router.dart';
import 'package:today_and_tomorrow/presentation/dashboard/goals/widgets/goal_app_bar.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/home_app_bar.dart';
import 'package:today_and_tomorrow/presentation/dashboard/statistics/widgets/statistics_app_bar.dart';
import 'package:today_and_tomorrow/presentation/dashboard/widgets/bottom_bar.dart';

@RoutePage()
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  PreferredSizeWidget _appBuilder(BuildContext context, TabsRouter tabsRouter) {
    if (tabsRouter.activeIndex == 0) return statisticsAppBar();
    if (tabsRouter.activeIndex == 1) return homeAppBar(context);
    return goalAppBar();
  }

  Widget _botomNavigationWidget(BuildContext context, TabsRouter tabsRouter) {
    return BottomBarD(
      onTap: tabsRouter.setActiveIndex,
      currentIndex: tabsRouter.activeIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: _appBuilder,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.decelerate,
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      routes: const [
        StatisticRoute(),
        HomeRoute(),
        GoalRoute(),
      ],
      bottomNavigationBuilder: _botomNavigationWidget,
    );
  }
}
