import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/training_sessions/models/training_session.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:uuid/uuid.dart';

part 'session_exercise.freezed.dart';
part 'session_exercise.g.dart';

@freezed
class SessionExercise with _$SessionExercise {
  @HiveType(typeId: 3)
  factory SessionExercise({
    @HiveField(0) required String id,
    @HiveField(1) required UserExercise baseExercise,
    @HiveField(2) required String sessionId,
    @HiveField(3) required List<ExerciseSet> sets,
    @HiveField(4) required Map<MuscleGroup, int> setsCount,
  }) = _SessionExercise;
  factory SessionExercise.fromUserExercise({
    required String sessionId,
    required UserExercise userExercise,
  }) {
    return SessionExercise(
      id: const Uuid().v4(),
      baseExercise: userExercise,
      sessionId: sessionId,
      sets: <ExerciseSet>[],
      setsCount: {},
    );
  }

  factory SessionExercise.fromJson(Map<String, dynamic> json) =>
      _$SessionExerciseFromJson(json);
}
