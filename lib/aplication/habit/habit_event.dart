part of 'habit_bloc.dart';

@freezed
class HabitEvent with _$HabitEvent {
  const factory HabitEvent.saveHabit({
    required Map<String, dynamic> formData,
    int? id,
  }) = _SaveHabit;

  const factory HabitEvent.getAll() = _GetAllHabits;

  const factory HabitEvent.delete({required int id}) = _DeleteHabit;

  const factory HabitEvent.updateHabit({required Habit updatedHabit}) =
      _UpdateHabit;

  const factory HabitEvent.completeTask({required Habit completeHabit}) =
      _CompleteTask;
}
