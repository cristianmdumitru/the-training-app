import 'package:either_dart/either.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/database/database.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

abstract interface class ITrainingSessionRepository
    implements ICRUD<TrainingSession> {
  Future<Either<AppError, TrainingSession>> addExercises({
    required List<SessionExercise> exercises,
    required TrainingSession session,
  });

  Future<Either<AppError, TrainingSession>> deleteExercise({
    required SessionExercise exercise,
    required TrainingSession session,
  });

  Future<Either<AppError, TrainingSession>> updateExercise({
    required SessionExercise exercise,
    required TrainingSession session,
    OperationType? operation,
  });

  Future<Either<AppError, TrainingSession>> addExerciseSet({
    required ExerciseSet exerciseSet,
    required SessionExercise exercise,
    required TrainingSession session,
  });

  Future<Either<AppError, TrainingSession>> deleteExerciseSet({
    required ExerciseSet exerciseSet,
    required SessionExercise exercise,
    required TrainingSession session,
  });

  Future<Either<AppError, TrainingSession>> updateExerciseSet({
    required ExerciseSet exerciseSet,
    required SessionExercise exercise,
    required TrainingSession session,
  });
}
