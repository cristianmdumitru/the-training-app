// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/settings/settings.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: ListView(
        children: [
          BlocSelector<SettingsCubit, SettingsState, bool>(
            selector: (state) {
              return state.isDarkMode;
            },
            builder: (context, isDarkMode) {
              return _SettingToggle(
                title: 'Dark Mode',
                value: isDarkMode,
                onChanged: (isDarkMode) {
                  context.read<SettingsCubit>().toggleTheme(
                        isDarkMode: isDarkMode,
                      );
                },
              );
            },
          ),
          _SettingToggle(
            title: 'Notifications',
            value: true,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}

class _SettingToggle extends StatelessWidget {
  const _SettingToggle({
    required this.title,
    required this.value,
    required this.onChanged,
  });
  final void Function(bool value) onChanged;
  final String title;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Switch(
            value: value,
            onChanged: onChanged.call,
          ),
        ],
      ),
    );
  }
}
