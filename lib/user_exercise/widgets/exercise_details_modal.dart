import 'package:flutter/material.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:uuid/uuid.dart';

class ExerciseDetailsModal extends StatefulWidget {
  const ExerciseDetailsModal({
    super.key,
    this.userExercise,
  });

  final UserExercise? userExercise;

  @override
  State<ExerciseDetailsModal> createState() => _ExerciseDetailsModalState();
}

class _ExerciseDetailsModalState extends State<ExerciseDetailsModal> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    _controller = TextEditingController();
    if (widget.userExercise != null) {
      _controller.text = widget.userExercise!.name;
    }
    _focusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppConstants.padding,
        child: Column(
          children: <Widget>[
            const Row(
              children: [
                Text('New exercise'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Exercise name',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  child: widget.userExercise != null
                      ? const Text('Save')
                      : const Text('Add'),
                  onPressed: () {
                    if (_controller.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter a name.'),
                        ),
                      );
                      return;
                    }
                    if (widget.userExercise != null) {
                      final updatedUserExercise = widget.userExercise!.copyWith(
                        name: _controller.text,
                      );
                      Navigator.of(context).pop(updatedUserExercise);
                    } else {
                      final newUserExercise = UserExercise(
                        id: const Uuid().v4(),
                        name: _controller.text,
                        exerciseType: ExerciseType.barbell,
                        effortType: EffortType.repRange,
                        createdAt: DateTime.now().millisecondsSinceEpoch,
                        updatedAt: DateTime.now().millisecondsSinceEpoch,
                        targettedMuscleGroups: [],
                      );
                      Navigator.of(context).pop(newUserExercise);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
