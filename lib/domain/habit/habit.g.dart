// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Habit _$HabitFromJson(Map<String, dynamic> json) => Habit(
      json['name'] as String,
      DateTime.parse(Habit.readValue(json, 'hour') as String),
      id: json['id'] as int? ?? 0,
      endingHour: Habit.readValue(json, 'endingHour') == null
          ? null
          : DateTime.parse(Habit.readValue(json, 'endingHour') as String),
    );

Map<String, dynamic> _$HabitToJson(Habit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hour': instance.hour.toIso8601String(),
      'endingHour': instance.endingHour?.toIso8601String(),
    };
