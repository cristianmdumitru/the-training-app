import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

part 'body_statistics_cubit.freezed.dart';
part 'body_statistics_state.dart';

@injectable
class BodyStatisticsCubit extends Cubit<BodyStatisticsState> {
  BodyStatisticsCubit({
    required ITrainingSessionRepository trainingSessionsRepository,
  })  : _trainingSessionRepository = trainingSessionsRepository,
        super(
          BodyStatisticsState(),
        ) {
    getSessions();
  }

  late final ITrainingSessionRepository _trainingSessionRepository;

  Future<void> getSessions() async {
    (await _trainingSessionRepository.read()).fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      _onSuccess,
    );
  }

  void _onSuccess(List<TrainingSession> sessions) {
    final aWeekAgo = DateTime.now()
        .subtract(
          const Duration(
            days: 7,
          ),
        )
        .millisecondsSinceEpoch;
    final lastSessions =
        sessions.where((session) => session.createdAt > aWeekAgo).toList();
    final setsCount = <MuscleGroup, int>{};
    for (final session in lastSessions) {
      for (final entry in session.setsCount.entries) {
        setsCount[entry.key] = (setsCount[entry.key] ?? 0) + entry.value;
      }
    }

    emit(
      state.copyWith(
        status: BlocStatus.success,
        lastSessions: lastSessions,
        setsCount: setsCount,
      ),
    );
  }
}
