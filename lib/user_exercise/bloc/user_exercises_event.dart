part of 'user_exercises_bloc.dart';

@freezed
class UserExercisesEvent with _$UserExercisesEvent {
  const factory UserExercisesEvent.fetch() = _Fetch;
  const factory UserExercisesEvent.create(UserExercise exercise) = _Create;
  const factory UserExercisesEvent.update(UserExercise exercise) = _Update;
  const factory UserExercisesEvent.delete(UserExercise exercise) = _Delete;
}
