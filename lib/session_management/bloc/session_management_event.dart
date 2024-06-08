part of 'session_management_bloc.dart';

@freezed
class SessionManagementEvent with _$SessionManagementEvent {
  const factory SessionManagementEvent.addExercises({
    required List<UserExercise> exercises,
  }) = _AddExercises;
  const factory SessionManagementEvent.deleteExercise({
    required SessionExercise exercise,
  }) = _DeleteExercise;
  const factory SessionManagementEvent.updateExercise({
    required SessionExercise exercise,
  }) = _UpdateExercise;
  const factory SessionManagementEvent.addExerciseSet({
    required SessionExercise exercise,
    required ExerciseSet exerciseSet,
  }) = _AddExerciseSet;
  const factory SessionManagementEvent.deleteExerciseSet({
    required SessionExercise exercise,
    required ExerciseSet exerciseSet,
  }) = _DeleteExerciseSet;
  const factory SessionManagementEvent.updateExerciseSet({
    required SessionExercise exercise,
    required ExerciseSet exerciseSet,
  }) = _UpdateExerciseSet;
  const factory SessionManagementEvent.fetch({
    required TrainingSession session,
  }) = _Fetch;
  const factory SessionManagementEvent.update({
    required TrainingSession session,
  }) = _Update;
}
