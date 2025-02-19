import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/app/core/core.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

part 'template_management_bloc.freezed.dart';
part 'template_management_event.dart';
part 'template_management_state.dart';

@injectable
class TemplateManagementBloc
    extends Bloc<TemplateManagementEvent, TemplateManagementState> {
  TemplateManagementBloc({
    required IWorkoutTemplateRepository trainingSessionRepository,
  })  : _workoutTemplateRepository = trainingSessionRepository,
        super(
          _TemplateManagementState(),
        ) {
    on<_AddExercises>(_onAddExercises);
    on<_DeleteExercise>(_onDeleteExercise);
    on<_UpdateExercise>(_onUpdateExercise);
    on<_Update>(_onUpdate);
    on<_Fetch>(_onFetch);
  }

  late final IWorkoutTemplateRepository _workoutTemplateRepository;

  void _onUpdate(_Update event, Emitter<TemplateManagementState> emit) {
    emit(
      state.copyWith(
        template: event.template,
      ),
    );
  }

  Future<void> _onFetch(
    _Fetch event,
    Emitter<TemplateManagementState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    await _workoutTemplateRepository.getById(event.template.id).fold(
          (error) => emit(
            state.copyWith(
              status: BlocStatus.error,
              errorMessage: error.message,
            ),
          ),
          (session) => emit(
            state.copyWith(
              template: session,
              status: BlocStatus.success,
            ),
          ),
        );
  }

  Future<void> _onAddExercises(
    _AddExercises event,
    Emitter<TemplateManagementState> emit,
  ) async {
    final template = state.template;
    if (template == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.createWorkoutTemplate.name,
        ),
      );
    }

    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    final newExercises = event.exercises;
    await _workoutTemplateRepository
        .addExercises(
          exercises: newExercises,
          template: template,
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
              template: updatedSession,
            ),
          ),
        );
  }

  Future<void> _onDeleteExercise(
    _DeleteExercise event,
    Emitter<TemplateManagementState> emit,
  ) async {
    final template = state.template;
    if (template == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.deleteTemplateExercise.name,
        ),
      );
    }
    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    await _workoutTemplateRepository
        .deleteExercise(
          exercise: event.exercise,
          template: template,
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
              template: updatedSession,
            ),
          ),
        );
  }

  Future<void> _onUpdateExercise(
    _UpdateExercise event,
    Emitter<TemplateManagementState> emit,
  ) async {
    final template = state.template;
    if (template == null) {
      return emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: ErrorType.createTemplateExercise.name,
        ),
      );
    }
    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    await _workoutTemplateRepository
        .updateExercise(
          exercise: event.exercise,
          template: template,
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
              template: updatedSession,
            ),
          ),
        );
  }
}
