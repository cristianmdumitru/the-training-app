part of 'body_statistics_cubit.dart';

@freezed
class BodyStatisticsState with _$BodyStatisticsState {
  factory BodyStatisticsState({
    @Default(BlocStatus.idle) BlocStatus status,
    @Default([]) List<TrainingSession> lastSessions,
    String? errorMessage,
    @Default({}) Map<MuscleGroup, int> setsCount,
  }) = _BodyStatisticsState;
  BodyStatisticsState._();
}
