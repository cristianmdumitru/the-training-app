import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/user_exercise/user_exercise.dart';

class TemplateExerciseDetailsModal extends StatefulWidget {
  const TemplateExerciseDetailsModal({
    super.key,
  });

  @override
  State<TemplateExerciseDetailsModal> createState() =>
      _TemplateExerciseDetailsModalState();
}

class _TemplateExerciseDetailsModalState
    extends State<TemplateExerciseDetailsModal> {
  final Map<String, UserExercise> _exercises = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: AppConstants.padding,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Row(
                  children: [
                    Text('Choose exercise'),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocSelector<UserExercisesBloc, UserExercisesState,
                    List<UserExercise>>(
                  selector: (state) {
                    return state.exercises;
                  },
                  builder: (context, userExercises) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: userExercises.length,
                      itemBuilder: (BuildContext context, int index) {
                        final exercise = userExercises[index];
                        final isSelected = _exercises[exercise.id] != null;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(exercise.name),
                            IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    if (isSelected) {
                                      _exercises.remove(exercise.id);
                                    } else {
                                      _exercises[exercise.id] = exercise;
                                    }
                                  },
                                );
                              },
                              icon: Icon(
                                isSelected
                                    ? Icons.check_box_outlined
                                    : Icons.check_box_outline_blank,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_exercises.isNotEmpty) {
                      Navigator.of(context).pop(_exercises.values.toList());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Please select at least one exercise.',
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Add selected exercises',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
