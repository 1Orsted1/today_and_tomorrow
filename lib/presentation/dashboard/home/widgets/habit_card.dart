import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/display_data.dart';

class HabitCard extends StatelessWidget {
  const HabitCard({
    super.key,
    required this.habit,
  });
  final Habit habit;

  // Future<void> _delayedUpdate() async {
  @override
  Widget build(BuildContext context) {
    final habitBloc = context.watch<HabitBloc>();
    final currentDate = DateTime.now();

    // return CompleteHabitToday(
    //   habit: habit,
    //   completeFunction: (Habit habit) => habitBloc.add(
    //     HabitEvent.updateHabit(updatedHabit: habit),
    //   ),
    // );

    return HabitCardWidget(
      habit: habit,
      deleteFunction: (int id) => habitBloc.add(
        HabitEvent.delete(id: id),
      ),
    );
  }
}
