import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/core/errors/app_error.dart';
import 'package:training_app/database/database.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

@Injectable(as: IUserExerciseRepository)
class UserExerciseHiveRepository implements IUserExerciseRepository {
  UserExerciseHiveRepository({
    required HiveService hiveService,
  }) {
    _hiveService = hiveService;
  }

  late final HiveService _hiveService;

  @override
  Future<Either<AppError, UserExercise>> create(
    UserExercise object,
  ) async {
    try {
      await _hiveService.userExercisesBox.put(object.id, object);
      return Right(object);
    } on Exception catch (e) {
      return Left(
        AppError(
          type: ErrorType.createUserExercise,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppError, bool>> delete(UserExercise object) async {
    await _hiveService.userExercisesBox.delete(object.id);
    if (_hiveService.userExercisesBox.get(object.id) == null) {
      return const Right(true);
    } else {
      return Left(
        AppError(
          type: ErrorType.deleteUserExercise,
          message: ErrorType.deleteUserExercise.message,
        ),
      );
    }
  }

  @override
  Future<Either<AppError, UserExercise>> getById(String id) async {
    final session = _hiveService.userExercisesBox.get(id);
    if (session == null) {
      return Left(
        AppError(
          type: ErrorType.getUserExercise,
          message: ErrorType.getUserExercise.message,
        ),
      );
    }
    return Right(session);
  }

  @override
  Future<Either<AppError, List<UserExercise>>> read() async {
    try {
      final sessions = _hiveService.userExercisesBox.values.toList();
      return Right(sessions);
    } catch (e) {
      return Left(
        AppError(
          type: ErrorType.fetchTrainingSessions,
          message: ErrorType.fetchTrainingSessions.message,
        ),
      );
    }
  }

  @override
  Future<Either<AppError, UserExercise>> update(
    UserExercise object,
  ) async {
    try {
      await _hiveService.userExercisesBox.put(object.id, object);
      return Right(object);
    } on Exception catch (e) {
      return Left(
        AppError(
          type: ErrorType.createUserExercise,
          message: e.toString(),
        ),
      );
    }
  }
}
