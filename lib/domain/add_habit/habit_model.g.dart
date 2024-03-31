// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HabitModel _$HabitModelFromJson(Map<String, dynamic> json) => HabitModel(
      name: json['name'] as String,
      hour: DateTime.parse(json['hour'] as String),
      interval: json['interval'] as int?,
    );

Map<String, dynamic> _$HabitModelToJson(HabitModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'hour': instance.hour.toIso8601String(),
      'interval': instance.interval,
    };
