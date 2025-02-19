import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/user_exercise_management/user_exercise_management.dart';

/// {@template user_exercises_view}
/// Displays the Body of the UserExercisePage.
/// {@endtemplate}
class UserExercisesView extends StatelessWidget {
  const UserExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Your exercises',
      ),
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
                  padding: DesignSystem.padding,
                  itemCount: state.exercises.length,
                  itemBuilder: (context, index) => Padding(
                    padding: DesignSystem.bottomMargin,
                    child: UserExerciseCard(
                      userExercise: state.exercises[index],
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
    final userExercise = await Navigator.push<UserExercise>(
      context,
      MaterialPageRoute(
        builder: (context) => const UserExerciseManagementView(),
      ),
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
