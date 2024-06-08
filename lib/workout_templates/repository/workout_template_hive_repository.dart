import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/core/errors/app_error.dart';
import 'package:training_app/database/database.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

@Injectable(as: IWorkoutTemplateRepository)
class WorkoutTemplateHiveRepository implements IWorkoutTemplateRepository {
  WorkoutTemplateHiveRepository({
    required HiveService hiveService,
  }) {
    _hiveService = hiveService;
  }

  late final HiveService _hiveService;

  @override
  Future<Either<AppError, WorkoutTemplate>> create(
    WorkoutTemplate object,
  ) async {
    try {
      await _hiveService.workoutTemplatesBox.put(object.id, object);
      return Right(object);
    } on Exception catch (e) {
      return Left(
        AppError(
          type: ErrorType.createWorkoutTemplate,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, bool>> delete(WorkoutTemplate object) async {
    await _hiveService.workoutTemplatesBox.delete(object.id);
    if (_hiveService.workoutTemplatesBox.get(object.id) == null) {
      return const Right(true);
    } else {
      return Left(
        AppError(
          type: ErrorType.deleteWorkoutTemplate,
          message: ErrorType.deleteWorkoutTemplate.message,
        ),
      );
    }
  }

  @override
  Future<Either<AppError, WorkoutTemplate>> getById(String id) async {
    final template = _hiveService.workoutTemplatesBox.get(id);
    if (template == null) {
      return Left(
        AppError(
          type: ErrorType.getWorkoutTemplate,
          message: ErrorType.getWorkoutTemplate.message,
        ),
      );
    }
    return Right(template);
  }

  @override
  Future<Either<AppError, List<WorkoutTemplate>>> read() async {
    try {
      final templates = _hiveService.workoutTemplatesBox.values.toList();
      return Right(templates);
    } catch (e) {
      return Left(
        AppError(
          type: ErrorType.fetchWorkoutTemplates,
          message: ErrorType.fetchWorkoutTemplates.message,
        ),
      );
    }
  }

  @override
  Future<Either<AppError, WorkoutTemplate>> update(
    WorkoutTemplate object,
  ) async {
    try {
      await _hiveService.workoutTemplatesBox.put(object.id, object);
      return Right(object);
    } on Exception catch (e) {
      return Left(
        AppError(
          type: ErrorType.createWorkoutTemplate,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, WorkoutTemplate>> addExercises({
    required List<UserExercise> exercises,
    required WorkoutTemplate template,
  }) async {
    final updatedTemplate = template.copyWith(
      exercises: [
        ...template.exercises,
        ...exercises,
      ],
    );
    return update(updatedTemplate);
  }

  @override
  Future<Either<AppError, WorkoutTemplate>> deleteExercise({
    required UserExercise exercise,
    required WorkoutTemplate template,
  }) async {
    final updatedTemplate = template.copyWith(
      exercises: template.exercises.where((e) => e.id != exercise.id).toList(),
    );
    return update(updatedTemplate);
  }

  @override
  Future<Either<AppError, WorkoutTemplate>> updateExercise({
    required UserExercise exercise,
    required WorkoutTemplate template,
  }) async {
    final updatedTemplate = template.copyWith(
      exercises: template.exercises
          .map(
            (e) => e.id == exercise.id ? exercise : e,
          )
          .toList(),
    );
    return update(updatedTemplate);
  }
}
