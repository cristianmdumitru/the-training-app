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

  double get coverage => setsCount.keys.length / MuscleGroup.values.length;

  double get tonnage => lastSessions
      .expand(
        (session) => session.exercises.expand(
          (exercise) => exercise.sets,
        ),
      )
      .fold(
        0,
        (previous, current) =>
            previous + (current.effortUnit.toDouble() * current.load),
      );
}
