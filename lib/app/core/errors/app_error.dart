enum ErrorType {
  createTrainingSession,
  updateTrainingSession,
  getTrainingSession,
  fetchTrainingSessions,
  deleteTrainingSession,
  createUserExercise,
  updateUserExercise,
  getUserExercise,
  fetchUserExercises,
  deleteUserExercise,
  createExerciseSet,
  updateExerciseSet,
  getExerciseSet,
  fetchExerciseSets,
  deleteExerciseSet,
  createSessionExercise,
  updateSessionExercise,
  getSessionExercise,
  fetchSessionExercises,
  deleteSessionExercise,
  createTemplateExercise,
  updateTemplateExercise,
  getTemplateExercise,
  fetchTemplateExercises,
  deleteTemplateExercise,
  createWorkoutTemplate,
  updateWorkoutTemplate,
  getWorkoutTemplate,
  fetchWorkoutTemplates,
  deleteWorkoutTemplate;

  String get message {
    switch (this) {
      case ErrorType.createTrainingSession:
        return 'training_session_could_not_be_created';
      case ErrorType.updateTrainingSession:
        return 'training_session_could_not_be_updated';
      case ErrorType.getTrainingSession:
        return 'training_session_not_found';
      case ErrorType.fetchTrainingSessions:
        return 'could_not_fetch_training_sessions';
      case ErrorType.deleteTrainingSession:
        return 'training_session_could_not_be_deleted';
      case ErrorType.createUserExercise:
        return 'user_exercise_could_not_be_created';
      case ErrorType.updateUserExercise:
        return 'user_exercise_could_not_be_updated';
      case ErrorType.getUserExercise:
        return 'user_exercise_not_found';
      case ErrorType.fetchUserExercises:
        return 'could_not_fetch_user_exercises';
      case ErrorType.deleteUserExercise:
        return 'user_exercise_could_not_be_deleted';
      case ErrorType.createExerciseSet:
        return 'exercise_set_could_not_be_created';
      case ErrorType.updateExerciseSet:
        return 'exercise_set_could_not_be_updated';
      case ErrorType.getExerciseSet:
        return 'exercise_set_not_found';
      case ErrorType.fetchExerciseSets:
        return 'could_not_fetch_exercise_sets';
      case ErrorType.deleteExerciseSet:
        return 'exercise_set_could_not_be_deleted';
      case ErrorType.createSessionExercise:
        return 'session_exercise_could_not_be_created';
      case ErrorType.updateSessionExercise:
        return 'session_exercise_could_not_be_updated';
      case ErrorType.getSessionExercise:
        return 'session_exercise_not_found';
      case ErrorType.fetchSessionExercises:
        return 'could_not_fetch_session_exercises';
      case ErrorType.deleteSessionExercise:
        return 'workout_template_could_not_be_deleted';
      case ErrorType.createWorkoutTemplate:
        return 'workout_template_could_not_be_created';
      case ErrorType.updateWorkoutTemplate:
        return 'workout_template_could_not_be_updated';
      case ErrorType.getWorkoutTemplate:
        return 'workout_template_not_found';
      case ErrorType.fetchWorkoutTemplates:
        return 'could_not_fetch_workout_templates';
      case ErrorType.deleteWorkoutTemplate:
        return 'workout_template_could_not_be_deleted';
      case ErrorType.createTemplateExercise:
        return 'workout_template_exercise_could_not_be_created';
      case ErrorType.updateTemplateExercise:
        return 'workout_template_exercise_could_not_be_updated';
      case ErrorType.getTemplateExercise:
        return 'workout_template_exercise_not_found';
      case ErrorType.fetchTemplateExercises:
        return 'could_not_fetch_workout_template_exercises';
      case ErrorType.deleteTemplateExercise:
        return 'workout_template_exercise_could_not_be_deleted';
    }
  }
}

class AppError {
  AppError({
    required this.type,
    required this.message,
  });

  final ErrorType type;
  final String message;
}
