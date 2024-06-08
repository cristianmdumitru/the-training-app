import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

/// {@template user_exercises_view}
/// Displays the Body of the UserExercisePage.
/// {@endtemplate}
class UserExercisesView extends StatelessWidget {
  const UserExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<UserExercisesBloc, UserExercisesState>(
          builder: (context, state) {
            switch (state.status) {
              case BlocStatus.idle:
              case BlocStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case BlocStatus.success:
                return ListView.builder(
                  key: const Key('exercises'),
                  padding: AppConstants.padding,
                  itemCount: state.exercises.length,
                  itemBuilder: (context, index) => UserExerciseCard(
                    userExercise: state.exercises[index],
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
    final userExercise = await showModalBottomSheet<UserExercise>(
      context: context,
      builder: (BuildContext context) {
        return const ExerciseDetailsModal();
      },
    );
    if (context.mounted && userExercise != null) {
      context.read<UserExercisesBloc>().add(
            UserExercisesEvent.create(
              userExercise,
            ),
          );
    }
  }
}
