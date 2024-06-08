// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_set.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

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
    );
  }

  @override
  void write(BinaryWriter writer, _$ExerciseSetImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.sessionExerciseId)
      ..writeByte(2)
      ..write(obj.load)
      ..writeByte(3)
      ..write(obj.effortRating)
      ..writeByte(4)
      ..write(obj.effortUnit);
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
    );

Map<String, dynamic> _$$ExerciseSetImplToJson(_$ExerciseSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionExerciseId': instance.sessionExerciseId,
      'load': instance.load,
      'effortRating': instance.effortRating,
      'effortUnit': instance.effortUnit,
    };
