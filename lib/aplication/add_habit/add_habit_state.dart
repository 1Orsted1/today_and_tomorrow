part of 'add_habit_bloc.dart';

@freezed
class AddHabitState with _$AddHabitState {
  const factory AddHabitState({final HabitModel? newHabit}) = _AddHabitState;

  factory AddHabitState.initial() => const AddHabitState();
}
