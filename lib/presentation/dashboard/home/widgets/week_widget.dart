import 'package:flutter/material.dart';
import 'package:today_and_tomorrow/domain/habit/day_status.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/i18n/strings.g.dart';

class WeekWidget extends StatelessWidget {
  const WeekWidget({super.key, required this.habit});
  final Habit habit;

  @override
  Widget build(BuildContext context) {
    final weekDays = habit.getDaysCompleted();
    final t = Translations.of(context);

    List<Widget> dayWidget({
      required String dayS,
      required int dayI,
      required DayStatus dayStatus,
    }) {
      final colorScheme = Theme.of(context).colorScheme;
      return [
        Text(dayS),
        if (dayStatus == DayStatus.incoming)
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 8,
          ),
        if (dayStatus == DayStatus.beforeCreated)
          CircleAvatar(
            backgroundColor: colorScheme.background,
            radius: 8,
          ),
        if (dayStatus == DayStatus.completed) //number of the monday
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 8,
            child: const Center(
              child: Icon(
                Icons.check_rounded,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        if (dayStatus == DayStatus.completedToday)
          CircleAvatar(
            backgroundColor: colorScheme.secondary,
            radius: 9,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: colorScheme.primary,
              child: const Center(
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        if (dayStatus == DayStatus.notCompleted)
          CircleAvatar(
            radius: 9,
            backgroundColor: colorScheme.secondary,
            child: const CircleAvatar(
              radius: 8,
              child: Center(
                child: Icon(
                  Icons.cancel,
                  size: 16,
                ),
              ),
            ),
          ),
        if (dayStatus == DayStatus.notCompletedToday)
          CircleAvatar(
            radius: 9,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: colorScheme.secondary,
              child: const Center(
                child: Icon(
                  Icons.cancel,
                  size: 16,
                ),
              ),
            ),
          ),
        Text(dayI.toString()),
      ];
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var i = 0; i < weekDays.length; i++)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dayWidget(
              dayS: t.weekLetters[i],
              dayI: weekDays[i].$1,
              dayStatus: weekDays[i].$2,
            ),
          ),
      ],
    );
  }
}
