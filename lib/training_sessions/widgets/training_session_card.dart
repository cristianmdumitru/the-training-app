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
                      IconButton(
                        onPressed: () {
                          context.read<TrainingSessionsBloc>().add(
                                TrainingSessionsEvent.clone(
                                  trainingSession: trainingSession,
                                ),
                              );
                        },
                        icon: const Icon(Icons.copy),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<TrainingSessionsBloc>().add(
                                TrainingSessionsEvent.delete(
                                  trainingSession: trainingSession,
                                ),
                              );
                        },
                        icon: const Icon(Icons.delete),
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
