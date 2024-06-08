import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/session_management/session_management.dart';

class SessionExerciseSetCard extends StatefulWidget {
  const SessionExerciseSetCard({
    required this.exercise,
    required this.exerciseSet,
    super.key,
  });
  final SessionExercise exercise;
  final ExerciseSet exerciseSet;

  @override
  State<SessionExerciseSetCard> createState() => _SessionExerciseSetCardState();
}

class _SessionExerciseSetCardState extends State<SessionExerciseSetCard> {
  late final TextEditingController _repsController;
  late final TextEditingController _weightController;

  @override
  void initState() {
    _repsController =
        TextEditingController(text: widget.exerciseSet.effortUnit.toString())
          ..addListener(() {
            context.read<SessionManagementBloc>().add(
                  SessionManagementEvent.updateExerciseSet(
                    exercise: widget.exercise,
                    exerciseSet: widget.exerciseSet.copyWith(
                      effortUnit: int.tryParse(_repsController.text) ?? 0,
                    ),
                  ),
                );
          });
    _weightController =
        TextEditingController(text: widget.exerciseSet.load.toString())
          ..addListener(() {
            context.read<SessionManagementBloc>().add(
                  SessionManagementEvent.updateExerciseSet(
                    exercise: widget.exercise,
                    exerciseSet: widget.exerciseSet.copyWith(
                      load: double.parse(_weightController.text),
                    ),
                  ),
                );
          });
    super.initState();
  }

  @override
  void dispose() {
    _repsController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: AppConstants.bottomMargin,
      child: Padding(
        padding: AppConstants.horizontalPadding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 200,
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _repsController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Container(
                    height: AppConstants.setCardHeight,
                    width: 1,
                    color: Colors.white.withOpacity(0.2),
                  ),
                  SizedBox(
                    width: 90,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                context.read<SessionManagementBloc>().add(
                      SessionManagementEvent.deleteExerciseSet(
                        exercise: widget.exercise,
                        exerciseSet: widget.exerciseSet,
                      ),
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
