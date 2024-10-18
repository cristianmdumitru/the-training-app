import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/template_management/template_management.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

class TemplateManagementView extends StatefulWidget {
  const TemplateManagementView({
    required this.template,
    super.key,
  });

  final WorkoutTemplate template;

  @override
  State<TemplateManagementView> createState() => _TemplateManagementViewState();
}

class _TemplateManagementViewState extends State<TemplateManagementView> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TemplateManagementBloc>()
        ..add(
          TemplateManagementEvent.fetch(
            template: widget.template,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.template.name),
        ),
        body: BlocConsumer<TemplateManagementBloc, TemplateManagementState>(
          listenWhen: (previous, current) =>
              previous.status == BlocStatus.loading &&
              current.status == BlocStatus.success,
          listener: (context, state) {
            context
                .read<WorkoutTemplatesBloc>()
                .add(const WorkoutTemplatesEvent.fetch());
          },
          builder: (context, state) {
            final template = state.template;
            if (template == null) {
              return const SizedBox.shrink();
            }
            return ListView.builder(
              padding: DesignSystem.padding,
              itemCount: template.exercises.length,
              itemBuilder: (context, index) {
                return TemplateExerciseCard(
                  templateExercise: template.exercises[index],
                );
              },
            );
          },
        ),
        floatingActionButton:
            BlocBuilder<TemplateManagementBloc, TemplateManagementState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () async {
                if (context.read<UserExercisesBloc>().state.exercises.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please create some exercises first.'),
                    ),
                  );
                  return;
                }
                final newExercises =
                    await showModalBottomSheet<List<UserExercise>>(
                  context: context,
                  builder: (context) {
                    return const TemplateExerciseDetailsModal();
                  },
                );
                if (context.mounted &&
                    newExercises != null &&
                    newExercises.isNotEmpty) {
                  context.read<TemplateManagementBloc>().add(
                        TemplateManagementEvent.addExercises(
                          exercises: newExercises,
                        ),
                      );
                }
              },
              child: const Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}

class _TemplateExerciseCard extends StatelessWidget {
  const _TemplateExerciseCard({
    required this.exercise,
  });

  final UserExercise exercise;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DesignSystem.padding,
      child: Container(
        padding: DesignSystem.padding,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.02),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(exercise.name),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
