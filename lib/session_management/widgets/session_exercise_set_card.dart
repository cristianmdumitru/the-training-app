import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/session_management/session_management.dart';

class SessionExerciseSetCard extends StatefulWidget {
  const SessionExerciseSetCard({
    required this.index,
    required this.exercise,
    required this.exerciseSet,
    super.key,
  });
  final int index;
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
      margin: DesignSystem.bottomMargin,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: DesignSystem.horizontalPadding,
                  child: Text('Set ${widget.index + 1}'),
                ),
              ),
              Container(
                height: DesignSystem.setCardHeight,
                width: 1,
                color: DesignSystem.getDividerColor(context),
              ),
              Expanded(
                child: Padding(
                  padding: DesignSystem.horizontalPadding,
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
              ),
              Container(
                height: DesignSystem.setCardHeight,
                width: 1,
                color: DesignSystem.getDividerColor(context),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: DesignSystem.horizontalPadding,
                  child: Row(
                    children: [
                      Flexible(
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
                      if (widget.exerciseSet.unitSystem == UnitSystem.metric)
                        const Text('KG')
                      else
                        const Text('lbs'),
                    ],
                  ),
                ),
              ),
              Container(
                height: DesignSystem.setCardHeight,
                width: 1,
                color: DesignSystem.getDividerColor(context),
              ),
              Expanded(
                child: IconButton(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
