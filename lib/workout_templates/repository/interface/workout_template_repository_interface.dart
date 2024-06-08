import 'package:either_dart/either.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/database/database.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

abstract interface class IWorkoutTemplateRepository
    implements ICRUD<WorkoutTemplate> {
  Future<Either<AppError, WorkoutTemplate>> addExercises({
    required List<UserExercise> exercises,
    required WorkoutTemplate template,
  });

  Future<Either<AppError, WorkoutTemplate>> deleteExercise({
    required UserExercise exercise,
    required WorkoutTemplate template,
  });

  Future<Either<AppError, WorkoutTemplate>> updateExercise({
    required UserExercise exercise,
    required WorkoutTemplate template,
  });
}
