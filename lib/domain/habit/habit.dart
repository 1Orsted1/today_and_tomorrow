import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:today_and_tomorrow/domain/habit/day_status.dart';
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
  List<String> completedDays = [];

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
        return null;
      }
    }
    return null;
  }

  Map<String, dynamic> toJson() => _$HabitToJson(this);

  void updateId({required int newId}) => id = newId;

  void setCreationDate() => creationDate = DateTime.now();

  void completeActivityToday() {
    completedDays.add(DateTime.now().toIso8601String());
  }

  bool canCompleteChallenge(DateTime date) {
    //si la hora que tiene destinada para completarse ese esta hora
    //si la tarea no se ha completado\
    final isTime = hour.hour == date.hour;
    //never completed a challenge before, can edit
    if (isTime) {
      if (completedDays.isEmpty) return true;
      //if the last day the challenge was completed wanst today, can edit
      if (_convertFromIso(completedDays.last).day != date.day) return true;
    }
    return false;
  }

  List<(int, DayStatus)> getDaysCompleted() {
    final today = DateTime.now();

    /// dommie date

    //final completedDays = [today, _addADay(dateTime: today)];

    ///
    final week = _getDaysOfWeekFrom(today);
    for (int i = 0; i < completedDays.length; i++) {
      final completeDate = _convertFromIso(completedDays[i]);
      if (completeDate.weekOfYear == today.weekOfYear) {
        final editIndex =
            week.indexWhere((element) => completeDate.day == element.$1);
        week[editIndex] = (
          completeDate.day,
          _evaluateCompleted(
            evaluatedDay: completeDate,
            today: today,
          )
        );
      }
    }
    return week;
  }

  List<(int, DayStatus)> _getDaysOfWeekFrom(DateTime today) {
    final List<(int, DayStatus)> weekDays = [];
    final firstDayOfTheWeek = _findFirstDateOfTheWeek(today);
    final lastDayOfTheWeek = _findLastDateOfTheWeek(today);
    DateTime helperDay = firstDayOfTheWeek;
    while (helperDay.isBefore(lastDayOfTheWeek)) {
      weekDays.add(
        (
          helperDay.day,
          _evaluateIncomplet(
            evaluatedDay: helperDay,
            today: today,
          )
        ),
      );
      helperDay = _addADay(dateTime: helperDay);
    }
    return weekDays;
  }

  DayStatus _evaluateIncomplet({
    required DateTime evaluatedDay,
    required DateTime today,
  }) {
    if (evaluatedDay.day < creationDate!.day) return DayStatus.beforeCreated;
    if (evaluatedDay.day == today.day) return DayStatus.notCompletedToday;
    if (evaluatedDay.day < today.day) return DayStatus.notCompleted;
    return DayStatus.incoming;
  }

  DayStatus _evaluateCompleted({
    required DateTime evaluatedDay,
    required DateTime today,
  }) {
    if (evaluatedDay.day == today.day) return DayStatus.completedToday;
    return DayStatus.completed;
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

  DateTime _convertFromIso(String iso) {
    return DateTime.parse(iso);
  }
}
