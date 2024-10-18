// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) =>
    SettingsState(
      isDarkMode: json['isDarkMode'] as bool? ?? true,
      preferredUnitSystem: $enumDecodeNullable(
              _$UnitSystemEnumMap, json['preferredUnitSystem']) ??
          UnitSystem.metric,
    );

Map<String, dynamic> _$SettingsStateToJson(SettingsState instance) =>
    <String, dynamic>{
      'isDarkMode': instance.isDarkMode,
      'preferredUnitSystem': _$UnitSystemEnumMap[instance.preferredUnitSystem]!,
    };

const _$UnitSystemEnumMap = {
  UnitSystem.imperial: 'imperial',
  UnitSystem.metric: 'metric',
};
