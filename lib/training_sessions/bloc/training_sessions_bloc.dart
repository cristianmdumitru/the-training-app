import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

part 'training_sessions_bloc.freezed.dart';
part 'training_sessions_event.dart';
part 'training_sessions_state.dart';

@injectable
class TrainingSessionsBloc
    extends Bloc<TrainingSessionsEvent, TrainingSessionsState> {
  TrainingSessionsBloc({
    required ITrainingSessionRepository trainingSessionRepository,
  })  : _trainingSessionRepository = trainingSessionRepository,
        super(
          const _TrainingSessionsState(),
        ) {
    on<_Fetch>(_onFetchTrainingSessions);
    on<_Create>(_onCreateTrainingSession);
    on<_Delete>(_onDeleteTrainingSession);
    add(const _Fetch());
  }

  late final ITrainingSessionRepository _trainingSessionRepository;

  Future<void> _onFetchTrainingSessions(
    _Fetch event,
    Emitter<TrainingSessionsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    final result = await _trainingSessionRepository.read();
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      (sessions) => emit(
        state.copyWith(
          status: BlocStatus.success,
          sessions: sessions,
        ),
      ),
    );
  }

  Future<FutureOr<void>> _onDeleteTrainingSession(
    _Delete event,
    Emitter<TrainingSessionsState> emit,
  ) async {
    final result = await _trainingSessionRepository.delete(
      event.trainingSession,
    );
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      (didDelete) => add(const _Fetch()),
    );
  }

  Future<void> _onCreateTrainingSession(
    _Create event,
    Emitter<TrainingSessionsState> emit,
  ) async {
    final result = await _trainingSessionRepository.create(
      event.trainingSession,
    );
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      (didCreate) => add(const _Fetch()),
    );
  }
}
