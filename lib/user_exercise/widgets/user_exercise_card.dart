import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

class UserExerciseCard extends StatelessWidget {
  const UserExerciseCard({
    required this.userExercise,
    super.key,
  });

  final UserExercise userExercise;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final updatedExercise = await showModalBottomSheet<UserExercise>(
          context: context,
          builder: (_) {
            return ExerciseDetailsModal(
              userExercise: userExercise,
            );
          },
        );
        if (context.mounted && updatedExercise != null) {
          context.read<UserExercisesBloc>().add(
                UserExercisesEvent.update(updatedExercise),
              );
        }
      },
      child: Card(
        margin: AppConstants.bottomMargin,
        child: Padding(
          padding: AppConstants.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(userExercise.name),
              IconButton(
                onPressed: () {
                  context.read<UserExercisesBloc>().add(
                        UserExercisesEvent.delete(userExercise),
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
