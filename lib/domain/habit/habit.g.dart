// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Habit _$HabitFromJson(Map<String, dynamic> json) => Habit(
      json['name'] as String,
      DateTime.parse(Habit.readValue(json, 'hour') as String),
      id: json['id'] as int? ?? 0,
    );

Map<String, dynamic> _$HabitToJson(Habit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hour': instance.hour.toIso8601String(),
    };
