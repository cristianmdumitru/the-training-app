import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/template_management/template_management.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

class WorkoutTemplateCard extends StatelessWidget {
  const WorkoutTemplateCard({
    required this.template,
    super.key,
  });

  final WorkoutTemplate template;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) {
              return TemplateManagementView(
                template: template,
              );
            },
          ),
        );
      },
      child: Card(
        margin: AppConstants.bottomMargin,
        child: Padding(
          padding: AppConstants.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(template.name),
              IconButton(
                onPressed: () {
                  context.read<WorkoutTemplatesBloc>().add(
                        WorkoutTemplatesEvent.delete(
                          template: template,
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
