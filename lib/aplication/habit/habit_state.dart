part of 'habit_bloc.dart';

@freezed
class HabitState with _$HabitState {
  const factory HabitState({
    required List<Habit> habitList,
    required bool habitJustCreated,
  }) = _HabitState;

  factory HabitState.initial() => const HabitState(
        habitList: [],
        habitJustCreated: false,
      );
}
