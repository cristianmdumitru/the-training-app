import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

part 'workout_templates_bloc.freezed.dart';
part 'workout_templates_event.dart';
part 'workout_templates_state.dart';

@injectable
class WorkoutTemplatesBloc
    extends Bloc<WorkoutTemplatesEvent, WorkoutTemplatesState> {
  WorkoutTemplatesBloc({
    required IWorkoutTemplateRepository workoutTemplateRepository,
  })  : _workoutTemplateRepository = workoutTemplateRepository,
        super(
          const _WorkoutTemplatesState(),
        ) {
    on<_Fetch>(_onFetch);
    on<_Create>(_onCreate);
    on<_Delete>(_onDelete);
    add(const _Fetch());
  }

  late final IWorkoutTemplateRepository _workoutTemplateRepository;

  Future<void> _onFetch(
    _Fetch event,
    Emitter<WorkoutTemplatesState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    final result = await _workoutTemplateRepository.read();
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      (templates) => emit(
        state.copyWith(
          status: BlocStatus.success,
          templates: templates,
        ),
      ),
    );
  }

  Future<FutureOr<void>> _onDelete(
    _Delete event,
    Emitter<WorkoutTemplatesState> emit,
  ) async {
    final result = await _workoutTemplateRepository.delete(
      event.template,
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

  Future<void> _onCreate(
    _Create event,
    Emitter<WorkoutTemplatesState> emit,
  ) async {
    final result = await _workoutTemplateRepository.create(
      event.template,
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
