import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_and_tomorrow/aplication/habit/habit_bloc.dart';
import 'package:today_and_tomorrow/domain/habit/habit.dart';

class CompleteTaskButton extends StatefulWidget {
  const CompleteTaskButton({
    super.key,
    required this.completeFunction,
    required this.isCompletedToday,
    required this.habit,
  });
  final bool isCompletedToday;
  final VoidCallback completeFunction;
  final Habit habit;
  @override
  State<CompleteTaskButton> createState() => _CompleteTaskButtonState();
}

class _CompleteTaskButtonState extends State<CompleteTaskButton> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<HabitBloc>();
    final theme = Theme.of(context);
    final isLoading = bloc.state.isLoading;
    bool waitingToComplete =
        bloc.state.waitingToComplete.contains(widget.habit.id.toString());
    return InkResponse(
      radius: 16,
      onTap: waitingToComplete || widget.isCompletedToday
          ? null
          : () {
              widget.completeFunction();
            },
      child: CircleAvatar(
        radius: 16,
        backgroundColor: widget.isCompletedToday && !waitingToComplete
            ? theme.colorScheme.scrim
            : theme.colorScheme.secondary,
        child: isLoading && waitingToComplete
            ? CircularProgressIndicator.adaptive(
                backgroundColor: theme.colorScheme.onBackground,
              )
            : Icon(
                widget.isCompletedToday
                    ? Icons.check_rounded
                    : Icons.check_box_outline_blank,
                color: widget.isCompletedToday
                    ? theme.colorScheme.secondary
                    : theme.colorScheme.scrim,
              ),
      ),
    );
  }
}
