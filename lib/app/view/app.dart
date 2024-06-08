import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/body_statistics/body_statistics.dart';
import 'package:training_app/settings/settings.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalProviders(
      child: BlocSelector<SettingsCubit, SettingsState, bool>(
        selector: (state) {
          return state.isDarkMode;
        },
        builder: (context, isDarkMode) {
          return MaterialApp(
            theme: isDarkMode
                ? AppTheme.darkColorScheme
                : AppTheme.lightColorScheme,
            home: const _AppPageView(),
          );
        },
      ),
    );
  }
}

class _AppPageView extends StatefulWidget {
  const _AppPageView();

  @override
  State<_AppPageView> createState() => _AppPageViewState();
}

class _AppPageViewState extends State<_AppPageView> {
  int _currentIndex = 0;
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

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _getTitleByIndex(_currentIndex),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const SettingsView(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: const [
          BodyStatistics(),
          TrainingSessionsListView(),
          WorkoutTemplatesListView(),
          UserExercisesView(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
        selectedIndex: _currentIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Sessions',
          ),
          NavigationDestination(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Exercises',
          ),
        ],
      ),
    );
  }

  Widget _getTitleByIndex(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const Text('Training history');
      case 1:
        return const Text('Your training sessions');
      case 2:
        return const Text('Workout templates');
      default:
        return const Text('Exercise library');
    }
  }
}
