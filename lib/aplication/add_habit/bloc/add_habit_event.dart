part of 'add_habit_bloc.dart';

@freezed
class AddHabitEvent with _$AddHabitEvent {
  const factory AddHabitEvent.newHabit({
    required String name,
    required DateTime hour,
  }) = _NewHabit;
}
