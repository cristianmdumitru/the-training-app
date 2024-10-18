import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

enum HiveBox {
  userExercises,
  trainingSessions,
  workoutTemplates,
}

@singleton
class HiveService {
  late final Box<UserExercise> userExercisesBox;
  late final Box<TrainingSession> trainingSessionsBox;
  late final Box<WorkoutTemplate> workoutTemplatesBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(TrainingSessionImplAdapter())
      ..registerAdapter(UserExerciseImplAdapter())
      ..registerAdapter(WorkoutTemplateImplAdapter())
      ..registerAdapter(SessionExerciseImplAdapter())
      ..registerAdapter(ExerciseSetImplAdapter())
      ..registerAdapter(MuscleGroupAdapter())
      ..registerAdapter(ExerciseTypeAdapter())
      ..registerAdapter(EffortTypeAdapter())
      ..registerAdapter(UnitSystemAdapter());
    userExercisesBox =
        await Hive.openBox<UserExercise>(HiveBox.userExercises.name);
    trainingSessionsBox =
        await Hive.openBox<TrainingSession>(HiveBox.trainingSessions.name);
    workoutTemplatesBox =
        await Hive.openBox<WorkoutTemplate>(HiveBox.workoutTemplates.name);
  }

  @disposeMethod
  Future<void> dispose() async {
    await Future.wait([
      userExercisesBox.close(),
      trainingSessionsBox.close(),
      Hive.close(),
    ]);
  }
}
