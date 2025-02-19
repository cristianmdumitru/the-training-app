import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:training_app/app/app.dart';

abstract interface class ICRUD<T> {
  Future<Either<AppError, T>> getById(String id);

  Future<Either<AppError, List<T>>> read();

  Future<Either<AppError, bool>> delete(T object);

  Future<Either<AppError, T>> update(T object);

  Future<Either<AppError, T>> create(T object);
}
