import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_field.freezed.dart';
part 'dynamic_field.g.dart';

@Freezed(unionKey: "type")
class DynamicField with _$DynamicField {
  //name and description
  const factory DynamicField.input({
    String? type,
  }) = InputField;
  //interval in week
  const factory DynamicField.multiOption({
    String? type,
  }) = MultiOptionField;
  //category
  const factory DynamicField.singleOption({
    String? type,
  }) = SingleOptionField;
  //hour
  const factory DynamicField.hour({
    String? type,
  }) = HourField;

  factory DynamicField.fromJson(Map<String, dynamic> json) =>
      _$DynamicFieldFromJson(json);
}
