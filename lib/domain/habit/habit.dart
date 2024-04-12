import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:week_of_year/week_of_year.dart';
import 'package:today_and_tomorrow/infraestructure/core/objectbox/objectbox.g.dart';
part 'habit.g.dart';

@JsonSerializable()
@Entity() // Signals ObjectBox to create a Box for this class.
class Habit {
  // Every @Entity requires an int property named 'id'
  // or an int property with any name annotated with @Id().
  @Id()
  int id;
  String name;
  @Property(type: PropertyType.date)
  @JsonKey(readValue: readValue)
  DateTime hour;
  @Property(type: PropertyType.date)
  @JsonKey(readValue: readValue)
  DateTime? endingHour;
  @Property(type: PropertyType.date)
  @JsonKey(readValue: readValue)
  DateTime? creationDate;
  @JsonKey(defaultValue: [])
  List<DateTime> completedDays = [];

  Habit(
    this.name,
    this.hour, {
    this.id = 0,
    this.endingHour,
  });

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);

  static String? readValue(Map<dynamic, dynamic> json, String key) {
    if (json.containsKey(key)) {
      try {
        if (json[key] == null) return null;
        return json[key].toString();
      } on FormatException catch (e) {
        debugPrint("Error parsing hour: $e");
        return null; // Or throw a specific exception based on your needs
      }
    }
    return null;
  }

  Map<String, dynamic> toJson() => _$HabitToJson(this);

  void updateId({required int newId}) => id = newId;

  void setCreationDate() => creationDate = DateTime.now();

  List<(int, HabitStatus)> getDaysCompleted() {
    final today = DateTime.now();

    /// dommie date

    final completedDays = [today, _addADay(dateTime: today)];

    ///
    final week = _getDaysOfWeekFrom(today);
    for (int i = 0; i < completedDays.length; i++) {
      if (completedDays[i].weekOfYear == today.weekOfYear) {
        final editIndex =
            week.indexWhere((element) => completedDays[i].day == element.$1);
        week[editIndex] = (
          completedDays[i].day,
          _evaluateCompleted(
            evaluatedDay: completedDays[i],
            today: today,
          )
        );
      }
    }
    return week;
  }

  List<(int, HabitStatus)> _getDaysOfWeekFrom(DateTime today) {
    final List<(int, HabitStatus)> weekDays = [];
    final firstDayOfTheWeek = _findFirstDateOfTheWeek(today);
    final lastDayOfTheWeek = _findLastDateOfTheWeek(today);
    DateTime helperDay = firstDayOfTheWeek;
    while (helperDay.day <= lastDayOfTheWeek.day) {
      weekDays.add(
        (
          helperDay.day,
          _evaluateInCompleted(
            evaluatedDay: helperDay,
            today: today,
          )
        ),
      );
      helperDay = _addADay(dateTime: helperDay);
    }
    return weekDays;
  }

  HabitStatus _evaluateInCompleted({
    required DateTime evaluatedDay,
    required DateTime today,
  }) {
    if (evaluatedDay.day < creationDate!.day) return HabitStatus.beforeCreated;
    if (evaluatedDay.day == today.day) return HabitStatus.notCompletedToday;
    if (evaluatedDay.day < today.day) return HabitStatus.completed;
    return HabitStatus.incoming;
  }

  HabitStatus _evaluateCompleted({
    required DateTime evaluatedDay,
    required DateTime today,
  }) {
    if (evaluatedDay.day == today.day) return HabitStatus.completedToday;
    return HabitStatus.completed;
  }

  DateTime _addADay({required DateTime dateTime, int days = 1}) {
    return dateTime.add(Duration(days: days));
  }

  DateTime _findFirstDateOfTheWeek(DateTime dateTime) {
    return dateTime.subtract(Duration(days: dateTime.weekday - 1));
  }

  DateTime _findLastDateOfTheWeek(DateTime dateTime) {
    return dateTime
        .add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
  }
}

enum HabitStatus {
  notCompleted,
  notCompletedToday,
  completed,
  completedToday,
  beforeCreated,
  incoming,
}
