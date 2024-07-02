import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/complete_habit_today.dart';
import 'package:today_and_tomorrow/presentation/dashboard/home/widgets/display_data.dart';

class HabitCard extends StatefulWidget {
  const HabitCard({
    super.key,
    required this.habit,
  });
  final Habit habit;

  @override
  State<HabitCard> createState() => _HabitCardState();
}

class _HabitCardState extends State<HabitCard> {
  // Future<void> _delayedUpdate() async {
  @override
  Widget build(BuildContext context) {
    final habitBloc = context.watch<HabitBloc>();
    final currentDate = DateTime.now();

    return habitBloc.state.waitingToComplete.contains(widget.habit.id)
        ? CompleteHabitToday(
            habit: widget.habit,
            completeFunction: (Habit habit) => habitBloc.add(
              HabitEvent.updateHabit(updatedHabit: habit),
            ),
          )
        : DisplayData(
            habit: widget.habit,
            deleteFunction: (int id) => habitBloc.add(
              HabitEvent.delete(id: id),
            ),
          );
  }
}
