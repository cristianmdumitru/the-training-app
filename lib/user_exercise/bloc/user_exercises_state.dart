part of 'user_exercises_bloc.dart';

@freezed
class UserExercisesState with _$UserExercisesState {
  const factory UserExercisesState({
    @Default(BlocStatus.idle) BlocStatus status,
    @Default(<UserExercise>[]) List<UserExercise> exercises,
    String? errorMessage,
  }) = _UserExerciseState;
}
