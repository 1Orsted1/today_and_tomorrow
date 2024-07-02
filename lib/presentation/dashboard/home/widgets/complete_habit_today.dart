import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';

class CompleteHabitToday extends StatelessWidget {
  const CompleteHabitToday(
      {super.key, required this.habit, required this.completeFunction});
  final Habit habit;
  final Function(Habit habit) completeFunction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme;
    final bloc = context.watch<HabitBloc>();
    final formatedInitialHour = DateFormat.jm().format(habit.hour);
    String? formatedEndHour;
    if (habit.endingHour != null) {
      formatedEndHour = DateFormat.jm().format(habit.endingHour!);
    }
    return Container(
      width: double.maxFinite,
      height: 150,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(6),
            Text(
              habit.name,
              style: textStyle.titleMedium,
            ),
            const Gap(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.alarm,
                  color: theme.colorScheme.secondary,
                  size: 16,
                ),
                const Gap(4),
                Text(
                  formatedInitialHour,
                  style: textStyle.labelMedium,
                ),
                if (formatedEndHour != null)
                  Text(
                    ' - $formatedEndHour',
                    style: textStyle.labelMedium,
                  ),
              ],
            ),
            const Gap(6),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  completeFunction(habit);
                },
                //! put this in translations
                child: const Text("Completar hoy"),
              ),
            ),
            const Gap(6),
          ],
        ),
      ),
    );
  }
}
