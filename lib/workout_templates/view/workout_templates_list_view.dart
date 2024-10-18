import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

/// {@template user_exercises_view}
/// Displays the Body of the UserExercisePage.
/// {@endtemplate}
class WorkoutTemplatesListView extends StatelessWidget {
  const WorkoutTemplatesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<WorkoutTemplatesBloc, WorkoutTemplatesState>(
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
                  itemCount: state.templates.length,
                  itemBuilder: (context, index) => WorkoutTemplateCard(
                    template: state.templates[index],
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
    final template = await showModalBottomSheet<WorkoutTemplate>(
      context: context,
      builder: (BuildContext context) {
        return const WorkoutTemplateDetailsModal();
      },
    );
    if (context.mounted && template != null) {
      context.read<WorkoutTemplatesBloc>().add(
            WorkoutTemplatesEvent.create(
              template,
            ),
          );
    }
  }
}
