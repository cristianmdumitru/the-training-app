import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

part 'user_exercise_management_cubit.freezed.dart';
part 'user_exercise_management_state.dart';

class UserExerciseManagementCubit extends Cubit<UserExerciseManagementState> {
  UserExerciseManagementCubit({
    required UserExercise? userExercise,
  }) : super(
          UserExerciseManagementState(
            userExercise: userExercise ?? UserExercise.empty(),
          ),
        );

  void setName({
    required String name,
  }) {
    emit(
      state.copyWith(
        userExercise: state.userExercise.copyWith(
          name: name,
        ),
      ),
    );
  }

  void setExerciseType({
    required ExerciseType type,
  }) {
    emit(
      state.copyWith(
        userExercise: state.userExercise.copyWith(
          exerciseType: type,
        ),
      ),
    );
  }

  void setEffortType({
    required EffortType type,
  }) {
    emit(
      state.copyWith(
        userExercise: state.userExercise.copyWith(
          effortType: type,
        ),
      ),
    );
  }

  void setTargetMuscles({
    required List<MuscleGroup> muscleGroups,
  }) {
    emit(
      state.copyWith(
        userExercise: state.userExercise.copyWith(
          targettedMuscleGroups: muscleGroups,
        ),
      ),
    );
  }
}
