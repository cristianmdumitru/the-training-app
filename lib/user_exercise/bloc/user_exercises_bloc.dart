import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

part 'user_exercises_bloc.freezed.dart';
part 'user_exercises_event.dart';
part 'user_exercises_state.dart';

@injectable
class UserExercisesBloc extends Bloc<UserExercisesEvent, UserExercisesState> {
  UserExercisesBloc({
    required IUserExerciseRepository userExerciseRepository,
  })  : _userExerciseRepository = userExerciseRepository,
        super(const UserExercisesState()) {
    on<_Fetch>(_onFetch);
    on<_Create>(_onCreate);
    on<_Delete>(_onDelete);
    on<_Update>(_onUpdate);
    add(const _Fetch());
  }

  late final IUserExerciseRepository _userExerciseRepository;

  List<UserExercise> get _predefinedExercises => [
        UserExercise(
          id: 'bench_press',
          name: 'Barbell Bench Press',
          exerciseType: ExerciseType.barbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.pecMajor,
            MuscleGroup.frontDelts,
            MuscleGroup.tricepsMedialHead,
          ],
        ),
        UserExercise(
          id: 'squat',
          name: 'Barbell Squat',
          exerciseType: ExerciseType.barbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.vlo,
            MuscleGroup.vmo,
            MuscleGroup.lowerAbs,
            MuscleGroup.upperAbs,
            MuscleGroup.lowerBack,
          ],
        ),
        UserExercise(
          id: 'deadlift',
          name: 'Deadlift',
          exerciseType: ExerciseType.barbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.lowerBack,
            MuscleGroup.bicepsFemoris,
            MuscleGroup.semimembranosus,
            MuscleGroup.semiTendinosis,
            MuscleGroup.gluteusMaximus,
            MuscleGroup.upperTraps,
            MuscleGroup.midTraps,
          ],
        ),
        UserExercise(
          id: 'overhead_press',
          name: 'Overhead Press',
          exerciseType: ExerciseType.barbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.frontDelts,
            MuscleGroup.rearDelts,
            MuscleGroup.tricepsMedialHead,
          ],
        ),
        UserExercise(
          id: 'barbell_row',
          name: 'Barbell Row',
          exerciseType: ExerciseType.barbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.lats,
            MuscleGroup.brachialis,
            MuscleGroup.brachioradialis,
            MuscleGroup.teresMajor,
            MuscleGroup.infraspinatus,
            MuscleGroup.biceps,
            MuscleGroup.upperTraps,
            MuscleGroup.midTraps,
          ],
        ),
        UserExercise(
          id: 'pull_up',
          name: 'Pull-Up',
          exerciseType: ExerciseType.bodyweight,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.lats,
            MuscleGroup.brachialis,
            MuscleGroup.brachioradialis,
            MuscleGroup.teresMajor,
            MuscleGroup.infraspinatus,
            MuscleGroup.biceps,
            MuscleGroup.midTraps,
            MuscleGroup.forearms,
            MuscleGroup.rhomboid,
          ],
        ),
        UserExercise(
          id: 'dip',
          name: 'Dip',
          exerciseType: ExerciseType.bodyweight,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.pecMajor,
            MuscleGroup.tricepsMedialHead,
            MuscleGroup.frontDelts,
          ],
        ),
        UserExercise(
          id: 'leg_press',
          name: 'Leg Press',
          exerciseType: ExerciseType.barbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.rectusFemoris,
            MuscleGroup.gluteusMaximus,
            MuscleGroup.vlo,
            MuscleGroup.vmo,
          ],
        ),
        UserExercise(
          id: 'bicep_curl',
          name: 'Bicep Curl',
          exerciseType: ExerciseType.dumbbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.biceps,
          ],
        ),
        UserExercise(
          id: 'tricep_extension',
          name: 'Tricep Extension',
          exerciseType: ExerciseType.dumbbell,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.tricepsLongHead,
            MuscleGroup.tricepsMedialHead,
          ],
        ),
        UserExercise(
          id: 'seated_calf_raises',
          name: 'Seated calf raises',
          exerciseType: ExerciseType.bodyweight,
          effortType: EffortType.rpe,
          createdAt: DateTime.now().millisecondsSinceEpoch,
          updatedAt: DateTime.now().millisecondsSinceEpoch,
          targettedMuscleGroups: [
            MuscleGroup.soleus,
            MuscleGroup.gastrocnemius,
          ],
        ),
      ];

  Future<void> _onFetch(
    _Fetch event,
    Emitter<UserExercisesState> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStatus.loading,
      ),
    );
    final result = await _userExerciseRepository.read();
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      (exercises) => emit(
        state.copyWith(
          status: BlocStatus.success,
          exercises: [
            ..._predefinedExercises,
            ...exercises,
          ],
        ),
      ),
    );
  }

  Future<void> _onDelete(
    _Delete event,
    Emitter<UserExercisesState> emit,
  ) async {
    final result = await _userExerciseRepository.delete(
      event.exercise,
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
    Emitter<UserExercisesState> emit,
  ) async {
    final result = await _userExerciseRepository.create(
      event.exercise,
    );
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      (exercise) => add(const _Fetch()),
    );
  }

  Future<void> _onUpdate(
    _Update event,
    Emitter<UserExercisesState> emit,
  ) async {
    final result = await _userExerciseRepository.update(
      event.exercise,
    );
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          errorMessage: error.message,
        ),
      ),
      (exercise) => add(const _Fetch()),
    );
  }
}
