import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/session_management/session_management.dart';
import 'package:training_app/settings/settings.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:uuid/uuid.dart';

class SessionManagementView extends StatefulWidget {
  const SessionManagementView({
    required this.trainingSession,
    this.previousSession,
    super.key,
  });

  final TrainingSession trainingSession;
  final TrainingSession? previousSession;

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
    this.previousSessionExercise,
  });

  final SessionExercise sessionExercise;
  final SessionExercise? previousSessionExercise;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DesignSystem.padding,
      child: Container(
        padding: DesignSystem.padding,
        decoration: BoxDecoration(
          color: DesignSystem.getExerciseCardBackgroundColor(context),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sessionExercise.baseExercise.name,
                    ),
                  ],
                ),
                DesignSystem.vSpace,
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
                          itemBuilder: (context, index) =>
                              SessionExerciseSetCard(
                            index: index,
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
                                    unitSystem: context
                                        .read<SettingsCubit>()
                                        .state
                                        .preferredUnitSystem,
                                    restTimeInSeconds: 0,
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
            Positioned(
              top: -10,
              right: -10,
              child: IconButton(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (contecxt) {
                      return AlertDialog(
                        title: const Text('Delete exercise'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text(
                                'Are you sure you want to delete ${sessionExercise.baseExercise.name}?',
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('No'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text('Yes'),
                            onPressed: () {
                              context.read<SessionManagementBloc>().add(
                                    SessionManagementEvent.deleteExercise(
                                      exercise: sessionExercise,
                                    ),
                                  );
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(
                  Icons.delete_rounded,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
