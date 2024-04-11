// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddHabitRoute.name: (routeData) {
      final args = routeData.argsAs<AddHabitRouteArgs>(
          orElse: () => const AddHabitRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddHabitScreen(
          key: args.key,
          editId: args.editId,
        ),
      );
    },
    DashBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashBoardScreen(),
      );
    },
    GoalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GoalScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    StatisticRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StatisticScreen(),
      );
    },
  };
}

/// generated route for
/// [AddHabitScreen]
class AddHabitRoute extends PageRouteInfo<AddHabitRouteArgs> {
  AddHabitRoute({
    Key? key,
    int? editId,
    List<PageRouteInfo>? children,
  }) : super(
          AddHabitRoute.name,
          args: AddHabitRouteArgs(
            key: key,
            editId: editId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddHabitRoute';

  static const PageInfo<AddHabitRouteArgs> page =
      PageInfo<AddHabitRouteArgs>(name);
}

class AddHabitRouteArgs {
  const AddHabitRouteArgs({
    this.key,
    this.editId,
  });

  final Key? key;

  final int? editId;

  @override
  String toString() {
    return 'AddHabitRouteArgs{key: $key, editId: $editId}';
  }
}

/// generated route for
/// [DashBoardScreen]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GoalScreen]
class GoalRoute extends PageRouteInfo<void> {
  const GoalRoute({List<PageRouteInfo>? children})
      : super(
          GoalRoute.name,
          initialChildren: children,
        );

  static const String name = 'GoalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StatisticScreen]
class StatisticRoute extends PageRouteInfo<void> {
  const StatisticRoute({List<PageRouteInfo>? children})
      : super(
          StatisticRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
