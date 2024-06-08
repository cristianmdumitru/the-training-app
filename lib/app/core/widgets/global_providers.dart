import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/settings/settings.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

class GlobalProviders extends StatelessWidget {
  const GlobalProviders({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<SettingsCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt<TrainingSessionsBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<UserExercisesBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<WorkoutTemplatesBloc>(),
        ),
      ],
      child: child,
    );
  }
}
