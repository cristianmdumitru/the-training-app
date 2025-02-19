import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'exercise_set.freezed.dart';
part 'exercise_set.g.dart';

@HiveType(typeId: 8)
enum UnitSystem {
  @HiveField(0)
  imperial,
  @HiveField(1)
  metric,
}

@freezed
class ExerciseSet with _$ExerciseSet {
  @HiveType(typeId: 2)
  factory ExerciseSet({
    @HiveField(0) required String id,
    @HiveField(1) required String sessionExerciseId,
    @HiveField(2) required double load,
    @HiveField(3) required int effortRating,
    @HiveField(4) required int effortUnit,
    @HiveField(5) required UnitSystem unitSystem,
    @HiveField(6) required int restTimeInSeconds,
  }) = _ExerciseSet;

  factory ExerciseSet.fromJson(Map<String, dynamic> json) =>
      _$ExerciseSetFromJson(json);
}
