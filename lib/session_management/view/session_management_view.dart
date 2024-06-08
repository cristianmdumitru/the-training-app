import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/session_management/session_management.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:uuid/uuid.dart';

class SessionManagementView extends StatefulWidget {
  const SessionManagementView({
    required this.trainingSession,
    super.key,
  });

  final TrainingSession trainingSession;

  @override
  State<SessionManagementView> createState() => _SessionManagementViewState();
}

class _SessionManagementViewState extends State<SessionManagementView> {
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
      create: (_) => getIt<SessionManagementBloc>()
        ..add(
          SessionManagementEvent.fetch(
            session: widget.trainingSession,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.trainingSession.name),
        ),
        body: BlocBuilder<SessionManagementBloc, SessionManagementState>(
          builder: (context, state) {
            final session = state.session;
            if (session == null) {
              return const SizedBox.shrink();
            }
            return PageView.builder(
              itemCount: session.exercises.length,
              itemBuilder: (context, index) {
                return _SessionExerciseCard(
                  sessionExercise: session.exercises[index],
                );
              },
            );
          },
        ),
        floatingActionButton:
            BlocBuilder<SessionManagementBloc, SessionManagementState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () async {
                final newExercises =
                    await showModalBottomSheet<List<UserExercise>>(
                  context: context,
                  builder: (context) {
                    return const SessionExerciseDetailsModal();
                  },
                );
                if (context.mounted &&
                    newExercises != null &&
                    newExercises.isNotEmpty) {
                  context.read<SessionManagementBloc>().add(
                        SessionManagementEvent.addExercises(
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

class _SessionExerciseCard extends StatelessWidget {
  const _SessionExerciseCard({
    required this.sessionExercise,
  });

  final SessionExercise sessionExercise;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.padding,
      child: Container(
        padding: AppConstants.padding,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.02),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(sessionExercise.baseExercise.name),
            AppConstants.vSpace,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: sessionExercise.sets.length,
                      itemBuilder: (context, index) => SessionExerciseSetCard(
                        exercise: sessionExercise,
                        exerciseSet: sessionExercise.sets[index],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<SessionManagementBloc>().add(
                            SessionManagementEvent.addExerciseSet(
                              exercise: sessionExercise,
                              exerciseSet: ExerciseSet(
                                id: const Uuid().v4(),
                                sessionExerciseId: sessionExercise.id,
                                effortRating: 9,
                                load: 100,
                                effortUnit: 10,
                              ),
                            ),
                          );
                    },
                    child: const Text('Add Set'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
