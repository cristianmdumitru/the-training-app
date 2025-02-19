import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/body_statistics/body_statistics.dart';
import 'package:training_app/settings/settings.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

class AppRouter {
  static GoRouter get router => _router;
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: Routes.home.name,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return AppPageView(
            state: state,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: Routes.home.name,
            name: Routes.home.name,
            builder: (context, state) {
              return const BodyStatistics();
            },
          ),
          GoRoute(
            path: Routes.journal.name,
            name: Routes.journal.name,
            builder: (context, state) {
              return const TrainingSessionsListView();
            },
          ),
          GoRoute(
            path: Routes.sessions.name,
            name: Routes.sessions.name,
            builder: (context, state) {
              return const WorkoutTemplatesListView();
            },
          ),
          GoRoute(
            path: Routes.statistics.name,
            name: Routes.statistics.name,
            builder: (context, state) {
              return const UserExercisesView();
            },
          ),
          GoRoute(
            path: Routes.settings.name,
            name: Routes.settings.name,
            builder: (context, state) {
              return const SettingsView();
            },
          ),
        ],
      ),
    ],
  );
}
