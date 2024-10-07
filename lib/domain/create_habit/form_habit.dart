import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:today_and_tomorrow/domain/create_habit/dynamic_field.dart';

part 'form_habit.freezed.dart';
part 'form_habit.g.dart';

@freezed
class FormHabit with _$FormHabit {
  const factory FormHabit({
    List<DynamicField>? fields,
  }) = _FormHabit;

  factory FormHabit.fromJson(Map<String, dynamic> json) =>
      _$FormHabitFromJson(json);
}
