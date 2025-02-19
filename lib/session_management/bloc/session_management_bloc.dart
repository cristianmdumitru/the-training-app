import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/app/core/core.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

part 'session_management_bloc.freezed.dart';
part 'session_management_event.dart';
part 'session_management_state.dart';

@injectable
class SessionManagementBloc
    extends Bloc<SessionManagementEvent, SessionManagementState> {
  SessionManagementBloc({
    required ITrainingSessionRepository trainingSessionRepository,
  })  : _trainingSessionRepository = trainingSessionRepository,
        super(
          _SessionManagementState(),
        ) {
    on<_AddExerciseSet>(_onAddExerciseSet);
    on<_DeleteExerciseSet>(_onDeleteExerciseSet);
    on<_UpdateExerciseSet>(_onUpdateExerciseSet);
    on<_AddExercises>(_onAddExercises);
    on<_DeleteExercise>(_onDeleteExercise);
    on<_UpdateExercise>(_onUpdateExercise);
    on<_Update>(_onUpdate);
    on<_Fetch>(_onFetch);
  }

  late final ITrainingSessionRepository _trainingSessionRepository;

  void _onUpdate(_Update event, Emitter<SessionManagementState> emit) {
    emit(
      state.copyWith(
        session: event.session,
      ),
    );
  }

  Future<void> _onFetch(
    _Fetch event,
    Emitter<SessionManagementState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    await _trainingSessionRepository.getById(event.session.id).fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (session) => emit(
            state.copyWith(
              session: session,
              status: BlocStatus.success,
            ),
          ),
        );
  }

  Future<void> _onAddExercises(
    _AddExercises event,
    Emitter<SessionManagementState> emit,
  ) async {
    final session = state.session;
    if (session == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.createSessionExercise.name,
        ),
      );
    }
    final newExercises = event.exercises
        .map(
          (exercises) => SessionExercise.fromUserExercise(
            sessionId: session.id,
            userExercise: exercises,
          ),
        )
        .toList();
    await _trainingSessionRepository
        .addExercises(
          exercises: newExercises,
          session: session,
        )
        .fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (updatedSession) => emit(
            state.copyWith(
              status: BlocStatus.success,
              session: updatedSession,
            ),
          ),
        );
  }

  Future<void> _onDeleteExercise(
    _DeleteExercise event,
    Emitter<SessionManagementState> emit,
  ) async {
    final session = state.session;
    if (session == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.deleteSessionExercise.name,
        ),
      );
    }
    await _trainingSessionRepository
        .deleteExercise(
          exercise: event.exercise,
          session: session,
        )
        .fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (updatedSession) => emit(
            state.copyWith(
              status: BlocStatus.success,
              session: updatedSession,
            ),
          ),
        );
  }

  Future<void> _onUpdateExercise(
    _UpdateExercise event,
    Emitter<SessionManagementState> emit,
  ) async {
    final session = state.session;
    if (session == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.updateSessionExercise.name,
        ),
      );
    }
    await _trainingSessionRepository
        .updateExercise(
          exercise: event.exercise,
          session: session,
        )
        .fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (updatedSession) => emit(
            state.copyWith(
              status: BlocStatus.success,
              session: updatedSession,
            ),
          ),
        );
  }

  Future<void> _onAddExerciseSet(
    _AddExerciseSet event,
    Emitter<SessionManagementState> emit,
  ) async {
    final session = state.session;
    if (session == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.createExerciseSet.name,
        ),
      );
    }
    await _trainingSessionRepository
        .addExerciseSet(
          exerciseSet: event.exerciseSet,
          exercise: event.exercise,
          session: session,
        )
        .fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (updatedSession) => emit(
            state.copyWith(
              status: BlocStatus.success,
              session: updatedSession,
            ),
          ),
        );
  }

  Future<void> _onDeleteExerciseSet(
    _DeleteExerciseSet event,
    Emitter<SessionManagementState> emit,
  ) async {
    final session = state.session;
    if (session == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.deleteExerciseSet.name,
        ),
      );
    }
    await _trainingSessionRepository
        .deleteExerciseSet(
          exerciseSet: event.exerciseSet,
          exercise: event.exercise,
          session: session,
        )
        .fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (updatedSession) => emit(
            state.copyWith(
              status: BlocStatus.success,
              session: updatedSession,
            ),
          ),
        );
  }

  Future<void> _onUpdateExerciseSet(
    _UpdateExerciseSet event,
    Emitter<SessionManagementState> emit,
  ) async {
    final session = state.session;
    if (session == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.updateExerciseSet.name,
        ),
      );
    }
    await _trainingSessionRepository
        .updateExerciseSet(
          exerciseSet: event.exerciseSet,
          exercise: event.exercise,
          session: session,
        )
        .fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (updatedSession) => emit(
            state.copyWith(
              status: BlocStatus.success,
              session: updatedSession,
            ),
          ),
        );
  }
}
