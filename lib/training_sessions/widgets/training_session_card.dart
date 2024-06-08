import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/session_management/session_management.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

class TrainingSessionCard extends StatelessWidget {
  const TrainingSessionCard({
    required this.trainingSession,
    super.key,
  });

  final TrainingSession trainingSession;

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
        margin: AppConstants.bottomMargin,
        child: Padding(
          padding: AppConstants.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(trainingSession.name),
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
        ),
      ),
    );
  }
}
