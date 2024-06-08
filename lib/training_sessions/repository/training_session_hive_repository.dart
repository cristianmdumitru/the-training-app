import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/core/errors/app_error.dart';
import 'package:training_app/database/database.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

enum OperationType {
  addSet,
  deleteSet,
}

@Injectable(as: ITrainingSessionRepository)
class TrainingSessionHiveRepository implements ITrainingSessionRepository {
  TrainingSessionHiveRepository({
    required HiveService hiveService,
  }) {
    _hiveService = hiveService;
  }

  late final HiveService _hiveService;

  @override
  Future<Either<AppError, TrainingSession>> create(
    TrainingSession object,
  ) async {
    try {
      await _hiveService.trainingSessionsBox.put(object.id, object);
      return Right(object);
    } on Exception catch (e) {
      return Left(
        AppError(
          type: ErrorType.createTrainingSession,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, bool>> delete(TrainingSession object) async {
    await _hiveService.trainingSessionsBox.delete(object.id);
    if (_hiveService.trainingSessionsBox.get(object.id) == null) {
      return const Right(true);
    } else {
      return Left(
        AppError(
          type: ErrorType.deleteTrainingSession,
          message: ErrorType.deleteTrainingSession.message,
        ),
      );
    }
  }

  @override
  Future<Either<AppError, TrainingSession>> getById(String id) async {
    final session = _hiveService.trainingSessionsBox.get(id);
    if (session == null) {
      return Left(
        AppError(
          type: ErrorType.getTrainingSession,
          message: ErrorType.getTrainingSession.message,
        ),
      );
    }
    return Right(session);
  }

  @override
  Future<Either<AppError, List<TrainingSession>>> read() async {
    try {
      final sessions = _hiveService.trainingSessionsBox.values.toList();
      return Right(sessions);
    } catch (e) {
      return Left(
        AppError(
          type: ErrorType.fetchTrainingSessions,
          message: ErrorType.fetchTrainingSessions.message,
        ),
      );
    }
  }

  @override
  Future<Either<AppError, TrainingSession>> update(
    TrainingSession object,
  ) async {
    try {
      await _hiveService.trainingSessionsBox.put(object.id, object);
      return Right(object);
    } on Exception catch (e) {
      return Left(
        AppError(
          type: ErrorType.createTrainingSession,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, TrainingSession>> addExercises({
    required List<SessionExercise> exercises,
    required TrainingSession session,
  }) async {
    final updatedSession = session.copyWith(
      exercises: [
        ...session.exercises,
        ...exercises,
      ],
    );
    return update(updatedSession);
  }

  @override
  Future<Either<AppError, TrainingSession>> deleteExercise({
    required SessionExercise exercise,
    required TrainingSession session,
  }) async {
    final updatedSession = session.copyWith(
      exercises: session.exercises.where((e) => e.id != exercise.id).toList(),
    );
    return update(updatedSession);
  }

  @override
  Future<Either<AppError, TrainingSession>> updateExercise({
    required SessionExercise exercise,
    required TrainingSession session,
    OperationType? operation,
  }) async {
    final incrementValue = switch (operation) {
      OperationType.addSet => 1,
      OperationType.deleteSet => -1,
      null => 0,
    };
    final updatedExerciseSetsCount =
        Map<MuscleGroup, int>.from(exercise.setsCount);
    final updatedSessionSetsCount =
        Map<MuscleGroup, int>.from(session.setsCount);
    for (final muscleGroup in exercise.baseExercise.targettedMuscleGroups) {
      updatedExerciseSetsCount[muscleGroup] =
          (updatedExerciseSetsCount[muscleGroup] ?? 0) + incrementValue;

      updatedSessionSetsCount[muscleGroup] =
          (updatedSessionSetsCount[muscleGroup] ?? 0) + incrementValue;
    }
    final updatedSession = session.copyWith(
      exercises: session.exercises
          .map(
            (e) => e.id == exercise.id
                ? exercise.copyWith(setsCount: updatedExerciseSetsCount)
                : e,
          )
          .toList(),
      setsCount: updatedSessionSetsCount,
    );
    return update(updatedSession);
  }

  @override
  Future<Either<AppError, TrainingSession>> addExerciseSet({
    required ExerciseSet exerciseSet,
    required SessionExercise exercise,
    required TrainingSession session,
  }) async {
    final updatedExercise = exercise.copyWith(
      sets: [
        ...exercise.sets,
        exerciseSet,
      ],
    );
    return updateExercise(
      exercise: updatedExercise,
      session: session,
      operation: OperationType.addSet,
    );
  }

  @override
  Future<Either<AppError, TrainingSession>> deleteExerciseSet({
    required ExerciseSet exerciseSet,
    required SessionExercise exercise,
    required TrainingSession session,
  }) async {
    final updatedExercise = exercise.copyWith(
      sets: exercise.sets.where((e) => e.id != exerciseSet.id).toList(),
    );
    return updateExercise(
      exercise: updatedExercise,
      session: session,
      operation: OperationType.deleteSet,
    );
  }

  @override
  Future<Either<AppError, TrainingSession>> updateExerciseSet({
    required ExerciseSet exerciseSet,
    required SessionExercise exercise,
    required TrainingSession session,
  }) async {
    final updatedExercise = exercise.copyWith(
      sets: exercise.sets
          .map(
            (e) => e.id == exerciseSet.id ? exerciseSet : e,
          )
          .toList(),
    );
    return updateExercise(
      exercise: updatedExercise,
      session: session,
    );
  }
}
