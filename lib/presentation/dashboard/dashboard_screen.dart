import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/presentation/core/app_router.dart';
import 'package:today_and_tomorrow/presentation/add_goals/widgets/goal_app_bar.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/home_app_bar.dart';
import 'package:today_and_tomorrow/presentation/dashboard/statistics/widgets/statistics_app_bar.dart';
import 'package:today_and_tomorrow/presentation/dashboard/widgets/bottom_bar.dart';

@RoutePage()
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBuilder(
        BuildContext context, TabsRouter tabsRouter) {
      if (tabsRouter.activeIndex == 0) return homeAppBar(context);
      if (tabsRouter.activeIndex == 1) return statisticsAppBar(context);
      return homeAppBar(context);
    }

    Widget botomNavigationWidget(BuildContext context, TabsRouter tabsRouter) {
      return BottomBarD(
        onTap: tabsRouter.setActiveIndex,
        currentIndex: tabsRouter.activeIndex,
      );
    }

    return AutoTabsScaffold(
      appBarBuilder: appBuilder,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.decelerate,
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      routes: const [
        HomeRoute(),
        StatisticRoute(),
      ],
      bottomNavigationBuilder: botomNavigationWidget,
    );
  }
}
