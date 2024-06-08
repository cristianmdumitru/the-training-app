part of 'template_management_bloc.dart';

@freezed
class TemplateManagementEvent with _$TemplateManagementEvent {
  const factory TemplateManagementEvent.addExercises({
    required List<UserExercise> exercises,
  }) = _AddExercises;
  const factory TemplateManagementEvent.deleteExercise({
    required UserExercise exercise,
  }) = _DeleteExercise;
  const factory TemplateManagementEvent.updateExercise({
    required UserExercise exercise,
  }) = _UpdateExercise;
  const factory TemplateManagementEvent.fetch({
    required WorkoutTemplate template,
  }) = _Fetch;
  const factory TemplateManagementEvent.update({
    required WorkoutTemplate template,
  }) = _Update;
}
