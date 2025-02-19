import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/user_exercise_management/user_exercise_management.dart';

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
        final updatedExercise = await Navigator.push<UserExercise>(
          context,
          MaterialPageRoute(
            builder: (context) => UserExerciseManagementView(
              userExercise: userExercise,
            ),
          ),
        );
        if (context.mounted && updatedExercise != null) {
          context.read<UserExercisesBloc>().add(
                UserExercisesEvent.update(updatedExercise),
              );
        }
      },
      child: MainCard(
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
    );
  }
}
