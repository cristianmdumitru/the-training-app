// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_set.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnitSystemAdapter extends TypeAdapter<UnitSystem> {
  @override
  final int typeId = 8;

  @override
  UnitSystem read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UnitSystem.imperial;
      case 1:
        return UnitSystem.metric;
      default:
        return UnitSystem.imperial;
    }
  }

  @override
  void write(BinaryWriter writer, UnitSystem obj) {
    switch (obj) {
      case UnitSystem.imperial:
        writer.writeByte(0);
        break;
      case UnitSystem.metric:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnitSystemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExerciseSetImplAdapter extends TypeAdapter<_$ExerciseSetImpl> {
  @override
  final int typeId = 2;

  @override
  _$ExerciseSetImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ExerciseSetImpl(
      id: fields[0] as String,
      sessionExerciseId: fields[1] as String,
      load: fields[2] as double,
      effortRating: fields[3] as int,
      effortUnit: fields[4] as int,
      unitSystem: fields[5] as UnitSystem,
      restTimeInSeconds: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$ExerciseSetImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.sessionExerciseId)
      ..writeByte(2)
      ..write(obj.load)
      ..writeByte(3)
      ..write(obj.effortRating)
      ..writeByte(4)
      ..write(obj.effortUnit)
      ..writeByte(5)
      ..write(obj.unitSystem)
      ..writeByte(6)
      ..write(obj.restTimeInSeconds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExerciseSetImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseSetImpl _$$ExerciseSetImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseSetImpl(
      id: json['id'] as String,
      sessionExerciseId: json['sessionExerciseId'] as String,
      load: (json['load'] as num).toDouble(),
      effortRating: (json['effortRating'] as num).toInt(),
      effortUnit: (json['effortUnit'] as num).toInt(),
      unitSystem: $enumDecode(_$UnitSystemEnumMap, json['unitSystem']),
      restTimeInSeconds: (json['restTimeInSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$$ExerciseSetImplToJson(_$ExerciseSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionExerciseId': instance.sessionExerciseId,
      'load': instance.load,
      'effortRating': instance.effortRating,
      'effortUnit': instance.effortUnit,
      'unitSystem': _$UnitSystemEnumMap[instance.unitSystem]!,
      'restTimeInSeconds': instance.restTimeInSeconds,
    };

const _$UnitSystemEnumMap = {
  UnitSystem.imperial: 'imperial',
  UnitSystem.metric: 'metric',
};
