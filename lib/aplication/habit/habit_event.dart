part of 'habit_bloc.dart';

@freezed
class HabitEvent with _$HabitEvent {
  const factory HabitEvent.saveHabit({
    required Map<String, dynamic> formData,
    int? id,
  }) = _NewHabit;

  const factory HabitEvent.getAll() = _GetAllHabits;

  const factory HabitEvent.getHabitById({required int id}) = _GetHabitById;

  const factory HabitEvent.delete({required int id}) = _DeleteHabit;
}
