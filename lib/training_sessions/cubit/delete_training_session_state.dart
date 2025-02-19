part of 'delete_training_session_cubit.dart';

@freezed
class DeleteTrainingSessionState with _$DeleteTrainingSessionState {
  factory DeleteTrainingSessionState({
    TrainingSession? session,
    @Default(BlocStatus.idle) BlocStatus status,
    AppError? error,
  }) = _DeleteTrainingSessionState;
}
