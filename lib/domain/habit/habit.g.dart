// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Habit _$HabitFromJson(Map<String, dynamic> json) => Habit(
      json['name'] as String,
      DateTime.parse(Habit.readValue(json, 'hour') as String),
      id: (json['id'] as num?)?.toInt() ?? 0,
      endingHour: Habit.readValue(json, 'endingHour') == null
          ? null
          : DateTime.parse(Habit.readValue(json, 'endingHour') as String),
    )
      ..creationDate = Habit.readValue(json, 'creationDate') == null
          ? null
          : DateTime.parse(Habit.readValue(json, 'creationDate') as String)
      ..lastCompletedDay = Habit.readValue(json, 'lastCompletedDay') == null
          ? null
          : DateTime.parse(Habit.readValue(json, 'lastCompletedDay') as String)
      ..completedDays = (json['completedDays'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [];

Map<String, dynamic> _$HabitToJson(Habit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hour': instance.hour.toIso8601String(),
      'endingHour': instance.endingHour?.toIso8601String(),
      'creationDate': instance.creationDate?.toIso8601String(),
      'lastCompletedDay': instance.lastCompletedDay?.toIso8601String(),
      'completedDays': instance.completedDays,
    };
