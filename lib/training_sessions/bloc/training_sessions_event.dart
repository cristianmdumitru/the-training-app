part of 'training_sessions_bloc.dart';

@freezed
class TrainingSessionsEvent with _$TrainingSessionsEvent {
  const factory TrainingSessionsEvent.fetch() = _Fetch;
  const factory TrainingSessionsEvent.create(TrainingSession trainingSession) =
      _Create;
  const factory TrainingSessionsEvent.delete({
    required TrainingSession trainingSession,
  }) = _Delete;
}
