import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/session_management/session_management.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

class TrainingSessionCard extends StatelessWidget {
  const TrainingSessionCard({
    required this.trainingSession,
    this.previousSession,
    super.key,
  });

  final TrainingSession trainingSession;
  final TrainingSession? previousSession;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) {
              return SessionManagementView(
                trainingSession: trainingSession,
              );
            },
          ),
        );
      },
      child: Card(
        margin: DesignSystem.bottomMargin,
        child: Padding(
          padding: DesignSystem.leftPadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(trainingSession.name),
                  Row(
                    children: [
                      BlocProvider(
                        create: (_) => getIt<DeleteTrainingSessionCubit>(),
                        child: MultiBlocListener(
                          listeners: [
                            BlocListener<DeleteTrainingSessionCubit,
                                DeleteTrainingSessionState>(
                              listenWhen: (previous, current) =>
                                  previous.status.isLoading &&
                                  current.status.isSuccess,
                              listener: (context, state) {
                                context.read<TrainingSessionsBloc>().add(
                                      const TrainingSessionsEvent.fetch(),
                                    );
                              },
                            ),
                            BlocListener<DeleteTrainingSessionCubit,
                                DeleteTrainingSessionState>(
                              listenWhen: (previous, current) =>
                                  previous.status.isLoading &&
                                  current.status.isError,
                              listener: (context, state) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      state.error!.message,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                          child: BlocBuilder<DeleteTrainingSessionCubit,
                              DeleteTrainingSessionState>(
                            builder: (context, state) {
                              return IconButton(
                                onPressed: () {
                                  context
                                      .read<DeleteTrainingSessionCubit>()
                                      .delete(
                                        session: trainingSession,
                                      );
                                },
                                icon: state.status.isLoading
                                    ? const CupertinoActivityIndicator()
                                    : const Icon(Icons.delete),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    DateFormat(DateFormat.YEAR_MONTH_DAY).format(
                      DateTime.fromMillisecondsSinceEpoch(
                        trainingSession.createdAt,
                      ),
                    ),
                  ),
                ],
              ),
              DesignSystem.vSpace,
            ],
          ),
        ),
      ),
    );
  }
}
