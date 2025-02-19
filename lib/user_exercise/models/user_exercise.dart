import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:uuid/uuid.dart';

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
  @HiveField(4)
  other,
  @HiveField(5)
  cable,
  @HiveField(6)
  machine;

  @override
  String toString() => switch (this) {
        ExerciseType.bodyweight => 'Bodyweight',
        ExerciseType.barbell => 'Barbell',
        ExerciseType.cardio => 'Cardio',
        ExerciseType.dumbbell => 'Dumbbell',
        ExerciseType.other => 'Other',
        ExerciseType.cable => 'Cable',
        ExerciseType.machine => 'Machine',
      };
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
  @HiveField(4)
  other;

  @override
  String toString() => switch (this) {
        EffortType.rpe => 'RPE',
        EffortType.rir => 'RIR',
        EffortType.repRange => 'Rep range',
        EffortType.isometric => 'Isometric',
        EffortType.other => 'Other',
      };
}

@freezed
class UserExercise with _$UserExercise {
  @HiveType(typeId: 1)
  factory UserExercise({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required ExerciseType? exerciseType,
    @HiveField(3) required EffortType? effortType,
    @HiveField(4) required int createdAt,
    @HiveField(5) required int updatedAt,
    @HiveField(6) required List<MuscleGroup> targettedMuscleGroups,
  }) = _UserExercise;

  factory UserExercise.fromJson(Map<String, dynamic> json) =>
      _$UserExerciseFromJson(json);

  factory UserExercise.empty() {
    return UserExercise(
      id: const Uuid().v4(),
      name: 'New exercise',
      exerciseType: null,
      effortType: null,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
      targettedMuscleGroups: [],
    );
  }
}
