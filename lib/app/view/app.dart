import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/settings/settings.dart';

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
          return MaterialApp.router(
            theme: isDarkMode
                ? AppTheme.darkColorScheme
                : AppTheme.lightColorScheme,
            routerConfig: AppRouter.router,
            builder: (context, child) => child!,
          );
        },
      ),
    );
  }
}

class AppPageView extends StatelessWidget {
  const AppPageView({
    required this.state,
    required this.child,
    super.key,
  });
  final GoRouterState state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: AppNavBar(
        state: state,
      ),
    );
  }
}
