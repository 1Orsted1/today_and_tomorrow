import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:today_and_tomorrow/presentation/core/app_router.dart';

AppBar homeAppBar(BuildContext context) {
  final dateToday = DateFormat.yMMMd().format(DateTime.now());
  return AppBar(
    centerTitle: false,
    title: Text(dateToday.toString()),
    actions: [
      IconButton(
          onPressed: () => context.router.push(AddHabitRoute()),
          icon: const Icon(Icons.add))
    ],
  );
}
