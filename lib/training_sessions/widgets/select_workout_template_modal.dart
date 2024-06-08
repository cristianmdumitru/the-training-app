import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

class SelectWorkoutTemplateModal extends StatefulWidget {
  const SelectWorkoutTemplateModal({
    super.key,
  });

  @override
  State<SelectWorkoutTemplateModal> createState() =>
      _SelectWorkoutTemplateModalState();
}

class _SelectWorkoutTemplateModalState
    extends State<SelectWorkoutTemplateModal> {
  final Map<String, WorkoutTemplate> _templates = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: AppConstants.padding,
          child: Column(
            children: <Widget>[
              const Row(
                children: [
                  Text('Choose template(s)'),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              BlocSelector<WorkoutTemplatesBloc, WorkoutTemplatesState,
                  List<WorkoutTemplate>>(
                selector: (state) {
                  return state.templates;
                },
                builder: (context, templates) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: templates.length,
                    itemBuilder: (BuildContext context, int index) {
                      final template = templates[index];
                      final isSelected = _templates[template.id] != null;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(template.name),
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  if (isSelected) {
                                    _templates.remove(template.id);
                                  } else {
                                    _templates[template.id] = template;
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
                  if (_templates.isNotEmpty) {
                    Navigator.of(context).pop(_templates.values.toList());
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Please select at least one template.',
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Add selected template(s)',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
