part of 'training_sessions_bloc.dart';

@freezed
class TrainingSessionsState with _$TrainingSessionsState {
  const factory TrainingSessionsState({
    @Default(BlocStatus.idle) BlocStatus status,
    @Default(<TrainingSession>[]) List<TrainingSession> sessions,
    String? errorMessage,
  }) = _TrainingSessionsState;
}
