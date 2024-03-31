import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_model.g.dart';

@JsonSerializable()
class HabitModel extends Equatable {
  final String name;
  final DateTime hour;
  final int? interval;

  const HabitModel({
    required this.name,
    required this.hour,
    required this.interval,
  });

  HabitModel fromJson(Map<String, dynamic> json) => _$HabitModelFromJson(json);

  @override
  List<Object?> get props => [
        name,
        hour,
        interval,
      ];

  Map<String, dynamic> toJson() => _$HabitModelToJson(this);
}
