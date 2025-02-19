part of 'settings_cubit.dart';

@JsonSerializable()
class SettingsState extends Equatable {
  const SettingsState({
    this.isDarkMode = true,
    this.preferredUnitSystem = UnitSystem.metric,
  });

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
  final bool isDarkMode;
  final UnitSystem preferredUnitSystem;

  Map<String, dynamic> toJson() => _$SettingsStateToJson(this);

  SettingsState copyWith({
    UnitSystem? preferredUnitSystem,
    bool? isDarkMode,
  }) {
    return SettingsState(
      preferredUnitSystem: preferredUnitSystem ?? this.preferredUnitSystem,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }

  @override
  List<Object> get props => [
        preferredUnitSystem,
        isDarkMode,
      ];
}
