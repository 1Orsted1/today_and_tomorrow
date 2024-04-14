import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';

class CompleteHabitToday extends StatelessWidget {
  const CompleteHabitToday(
      {super.key, required this.habit, required this.completeFunction});
  final Habit habit;
  final Function() completeFunction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Card(
      color: colorScheme.secondary,
      child: Dismissible(
        movementDuration: const Duration(seconds: 2),
        resizeDuration: const Duration(seconds: 1),
        background: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Center(
            child: Text(
              "Completed!",
              style: theme.textTheme.displaySmall?.copyWith(
                color: colorScheme.background,
              ),
            ),
          ),
        ),
        onDismissed: (direction) {
          completeFunction();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              margin: const EdgeInsets.only(bottom: 0, right: 70, left: 70),
              padding: const EdgeInsets.all(5),
              duration: const Duration(milliseconds: 1200),
              content: Container(
                  alignment: Alignment.center,
                  height: 25,
                  child: Text('Habit ${habit.name} completed today'))));
        },
        key: UniqueKey(),
        direction: DismissDirection.startToEnd,
        child: Container(
          height: 100,
          child: Center(
            child: Text(
              "Complete =>",
              style: theme.textTheme.displaySmall?.copyWith(
                color: colorScheme.background,
              ), //TextStyle(color: colorScheme.background),
            ),
          ),
        ),
      ),
    );
  }
}
