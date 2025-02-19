part of 'workout_templates_bloc.dart';

@freezed
class WorkoutTemplatesState with _$WorkoutTemplatesState {
  const factory WorkoutTemplatesState({
    @Default(BlocStatus.idle) BlocStatus status,
    @Default(<WorkoutTemplate>[]) List<WorkoutTemplate> templates,
    String? errorMessage,
  }) = _WorkoutTemplatesState;
}
