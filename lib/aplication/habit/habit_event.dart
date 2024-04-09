part of 'habit_bloc.dart';

@freezed
class HabitEvent with _$HabitEvent {
  const factory HabitEvent.newHabit({
    required Map<String, dynamic> formData,
  }) = _NewHabit;

  const factory HabitEvent.getAll() = _GetAllHabits;

  const factory HabitEvent.delete({required int id}) = _DeleteHabit;
}
