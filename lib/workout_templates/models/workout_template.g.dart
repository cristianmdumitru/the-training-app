// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_template.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutTemplateImplAdapter extends TypeAdapter<_$WorkoutTemplateImpl> {
  @override
  final int typeId = 6;

  @override
  _$WorkoutTemplateImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$WorkoutTemplateImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      exercises: (fields[2] as List).cast<UserExercise>(),
      createdAt: fields[3] as int,
      updatedAt: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$WorkoutTemplateImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(2)
      ..write(obj.exercises);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutTemplateImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutTemplateImpl _$$WorkoutTemplateImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutTemplateImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => UserExercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: (json['createdAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num).toInt(),
    );

Map<String, dynamic> _$$WorkoutTemplateImplToJson(
        _$WorkoutTemplateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'exercises': instance.exercises,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
