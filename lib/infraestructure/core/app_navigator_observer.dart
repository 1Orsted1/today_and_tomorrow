import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppNavigatorObserver extends AutoRouteObserver {
  final stack = [];

  @override
  void didPush(Route route, Route? previousRoute) {
    final setting = route.settings;
    if (setting is AutoRoutePage) {
      stack.add(setting.routeData.path);
      log(stack.toString());
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (route.data != null) {
      stack.removeLast();
      log(stack.toString());
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    final setting = route.settings;
    if (setting is AutoRoutePage) {
      stack.remove(setting.routeData.path);
      log(stack.toString());
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    final oldSettings = oldRoute?.settings;
    if (oldSettings is AutoRoutePage) {
      stack.remove(oldSettings.routeData.path);
      log(stack.toString());
    }
    final newSettings = oldRoute?.settings;
    if (newSettings is AutoRoutePage) {
      stack.add(newSettings.routeData.path);
      log(stack.toString());
    }
  }
}
