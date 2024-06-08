import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/template_management/template_management.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

class TemplateExerciseCard extends StatelessWidget {
  const TemplateExerciseCard({
    required this.templateExercise,
    super.key,
  });

  final UserExercise templateExercise;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // final updatedExercise = await showModalBottomSheet<UserExercise>(
        //   context: context,
        //   builder: (_) {
        //     return ExerciseDetailsModal(
        //       userExercise: templateExercise,
        //     );
        //   },
        // );
        // if (context.mounted && updatedExercise != null) {
        //   context.read<UserExercisesBloc>().add(
        //         UserExercisesEvent.update(updatedExercise),
        //       );
        // }
      },
      child: Card(
        margin: AppConstants.bottomMargin,
        child: Padding(
          padding: AppConstants.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(templateExercise.name),
              IconButton(
                onPressed: () {
                  context.read<TemplateManagementBloc>().add(
                        TemplateManagementEvent.deleteExercise(
                          exercise: templateExercise,
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
