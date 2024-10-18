import 'package:flutter/material.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:uuid/uuid.dart';

class TrainingSessionDetailsModal extends StatefulWidget {
  const TrainingSessionDetailsModal({
    super.key,
    this.trainingSession,
  });

  final TrainingSession? trainingSession;

  @override
  State<TrainingSessionDetailsModal> createState() =>
      _TrainingSessionDetailsModalState();
}

class _TrainingSessionDetailsModalState
    extends State<TrainingSessionDetailsModal> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    _controller = TextEditingController();
    if (widget.trainingSession != null) {
      _controller.text = widget.trainingSession!.name;
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
        padding: DesignSystem.padding,
        child: Column(
          children: <Widget>[
            const Row(
              children: [
                Text('New session'),
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
                      labelText: 'Session name',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  child: widget.trainingSession != null
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
                    final trainingSessionModel = TrainingSession(
                      id: const Uuid().v4(),
                      name: _controller.text,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                      updatedAt: DateTime.now().millisecondsSinceEpoch,
                      templateId: '',
                      exercises: [],
                      setsCount: {},
                    );
                    Navigator.of(context).pop(trainingSessionModel);
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
