import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:training_app/session_exercise/session_exercise.dart';

part 'settings_cubit.g.dart';
part 'settings_state.dart';

@injectable
class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void toggleTheme({
    required bool isDarkMode,
  }) {
    emit(
      state.copyWith(
        isDarkMode: isDarkMode,
      ),
    );
  }

  void setUnitSystem({
    required UnitSystem unitSystem,
  }) {
    emit(
      state.copyWith(
        preferredUnitSystem: unitSystem,
      ),
    );
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    return SettingsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return state.toJson();
  }
}
