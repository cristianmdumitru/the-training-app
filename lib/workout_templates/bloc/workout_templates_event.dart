part of 'workout_templates_bloc.dart';

@freezed
class WorkoutTemplatesEvent with _$WorkoutTemplatesEvent {
  const factory WorkoutTemplatesEvent.fetch() = _Fetch;
  const factory WorkoutTemplatesEvent.create(WorkoutTemplate template) =
      _Create;
  const factory WorkoutTemplatesEvent.delete({
    required WorkoutTemplate template,
  }) = _Delete;
}
