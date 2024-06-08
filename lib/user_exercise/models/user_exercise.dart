import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

part 'user_exercise.freezed.dart';
part 'user_exercise.g.dart';

@HiveType(typeId: 4)
enum ExerciseType {
  @HiveField(0)
  bodyweight,
  @HiveField(1)
  barbell,
  @HiveField(2)
  cardio,
  @HiveField(3)
  dumbbell,
}

@HiveType(typeId: 5)
enum EffortType {
  @HiveField(0)
  rpe,
  @HiveField(1)
  rir,
  @HiveField(2)
  repRange,
  @HiveField(3)
  isometric,
}

@freezed
class UserExercise with _$UserExercise {
  @HiveType(typeId: 1)
  factory UserExercise({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required ExerciseType exerciseType,
    @HiveField(3) required EffortType effortType,
    @HiveField(4) required int createdAt,
    @HiveField(5) required int updatedAt,
    @HiveField(6) required List<MuscleGroup> targettedMuscleGroups,
  }) = _UserExercise;

  factory UserExercise.fromJson(Map<String, dynamic> json) =>
      _$UserExerciseFromJson(json);
}
