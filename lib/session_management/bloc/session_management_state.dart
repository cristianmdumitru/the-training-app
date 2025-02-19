part of 'session_management_bloc.dart';

@freezed
class SessionManagementState with _$SessionManagementState {
  factory SessionManagementState({
    TrainingSession? session,
    @Default(BlocStatus.idle) BlocStatus status,
    String? errorMessage,
  }) = _SessionManagementState;
}
