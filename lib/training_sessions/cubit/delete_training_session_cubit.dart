import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_app/app/core/core.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

part 'delete_training_session_cubit.freezed.dart';
part 'delete_training_session_state.dart';

@injectable
class DeleteTrainingSessionCubit extends Cubit<DeleteTrainingSessionState> {
  DeleteTrainingSessionCubit({
    required ITrainingSessionRepository trainingSessionRepository,
  }) : super(DeleteTrainingSessionState()) {
    _trainingSessionRepository = trainingSessionRepository;
  }

  late final ITrainingSessionRepository _trainingSessionRepository;

  Future<void> delete({
    required TrainingSession session,
  }) async {
    final result = await _trainingSessionRepository.delete(
      session,
    );
    result.fold(
      (error) => emit(
        state.copyWith(
          status: BlocStatus.error,
          error: error,
        ),
      ),
      (didDelete) => emit(
        state.copyWith(
          status: BlocStatus.success,
        ),
      ),
    );
  }
}
