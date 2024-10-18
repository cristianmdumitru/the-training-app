part of 'training_sessions_bloc.dart';

@freezed
class TrainingSessionsState with _$TrainingSessionsState {
  const factory TrainingSessionsState({
    @Default(BlocStatus.idle) BlocStatus status,
    @Default(<TrainingSession>[]) List<TrainingSession> sessions,
    String? errorMessage,
  }) = _TrainingSessionsState;
  const TrainingSessionsState._();

  List<TrainingSession> get sortedSessions {
    final trainingSessions = [
      ...sessions,
    ]..sort((a, b) => a.createdAt > b.createdAt ? -1 : 1);
    return trainingSessions;
  }

  TrainingSession? getPreviousSession({
    required TrainingSession session,
  }) {
    return sortedSessions.lastWhereOrNull(
      (lookupSession) => lookupSession.templateId == session.id,
    );
  }
}
