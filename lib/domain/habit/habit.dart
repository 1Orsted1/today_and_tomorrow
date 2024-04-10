import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';
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

  Habit(this.name, this.hour, {this.id = 0});

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);

  static String? readValue(Map<dynamic, dynamic> json, String key) {
    if (json.containsKey(key)) {
      try {
        return json[key].toString();
      } on FormatException catch (e) {
        debugPrint("Error parsing hour: $e");
        return null; // Or throw a specific exception based on your needs
      }
    }
    return null;
  }

  Map<String, dynamic> toJson(Habit habit) => _$HabitToJson(this);
}
