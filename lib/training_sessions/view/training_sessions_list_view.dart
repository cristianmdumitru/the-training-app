import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

class TrainingSessionsListView extends StatelessWidget {
  const TrainingSessionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Training journal',
      ),
      body: Center(
        child: BlocBuilder<TrainingSessionsBloc, TrainingSessionsState>(
          builder: (context, state) {
            switch (state.status) {
              case BlocStatus.idle:
              case BlocStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );

              case BlocStatus.success:
                return ListView.builder(
                  padding: DesignSystem.padding,
                  itemCount: state.sortedSessions.length,
                  itemBuilder: (context, index) => TrainingSessionCard(
                    trainingSession: state.sortedSessions[index],
                    previousSession: state.getPreviousSession(
                      session: state.sortedSessions[index],
                    ),
                  ),
                );
              case BlocStatus.error:
                return Center(
                  child: Text(state.errorMessage ?? ''),
                );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onPressed(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _onPressed(BuildContext context) async {
    if (context.read<WorkoutTemplatesBloc>().state.templates.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please create a template first.'),
        ),
      );
      return;
    }
    final workoutTemplates = await showModalBottomSheet<List<WorkoutTemplate>>(
      context: context,
      builder: (BuildContext context) {
        return const SelectWorkoutTemplateModal();
      },
    );
    if (context.mounted && workoutTemplates != null) {
      for (final template in workoutTemplates) {
        final trainingSession =
            TrainingSession.fromTemplate(template: template);
        context.read<TrainingSessionsBloc>().add(
              TrainingSessionsEvent.create(
                trainingSession,
              ),
            );
      }
    }
  }
}
