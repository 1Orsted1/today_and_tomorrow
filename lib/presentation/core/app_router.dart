import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/presentation/add_habit/add_habit_screen.dart';
import 'package:today_and_tomorrow/presentation/dashboard/dashboard_screen.dart';
import 'package:today_and_tomorrow/presentation/add_goals/add_goal_screen.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/home_screen.dart';
import 'package:today_and_tomorrow/presentation/dashboard/statistics/statistics_screen.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: DashBoardRoute.page, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: StatisticRoute.page),
        ]),
        AutoRoute(page: AddHabitRoute.page),
        AutoRoute(page: AddGoalRoute.page),
      ];
}
