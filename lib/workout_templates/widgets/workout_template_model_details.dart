import 'package:flutter/material.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/workout_templates/workout_templates.dart';
import 'package:uuid/uuid.dart';

class WorkoutTemplateDetailsModal extends StatefulWidget {
  const WorkoutTemplateDetailsModal({
    super.key,
    this.workoutTemplate,
  });

  final WorkoutTemplate? workoutTemplate;

  @override
  State<WorkoutTemplateDetailsModal> createState() =>
      _WorkoutTemplateDetailsModalState();
}

class _WorkoutTemplateDetailsModalState
    extends State<WorkoutTemplateDetailsModal> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    _controller = TextEditingController();
    if (widget.workoutTemplate != null) {
      _controller.text = widget.workoutTemplate!.name;
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
                Text('New template'),
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
                      labelText: 'Template name',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  child: widget.workoutTemplate != null
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
                    // if (widget.trainingSession != null) {
                    //   final trainingSessionCubit =
                    //       context.read<TrainingSessionsCubit>();
                    //   final trainingSessionModel =
                    //       widget.trainingSession!.copyWith(
                    //     name: _controller.text,
                    //   );
                    //   trainingSessionCubit
                    //       .updateTrainingSession(trainingSessionModel);
                    //   Navigator.pop(context);
                    //   return;
                    // }
                    final workoutTemplate = WorkoutTemplate(
                      id: const Uuid().v4(),
                      name: _controller.text,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                      updatedAt: DateTime.now().millisecondsSinceEpoch,
                      exercises: [],
                    );
                    Navigator.of(context).pop(workoutTemplate);
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