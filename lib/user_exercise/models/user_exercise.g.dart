// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_exercise.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExerciseTypeAdapter extends TypeAdapter<ExerciseType> {
  @override
  final int typeId = 4;

  @override
  ExerciseType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ExerciseType.bodyweight;
      case 1:
        return ExerciseType.barbell;
      case 2:
        return ExerciseType.cardio;
      case 3:
        return ExerciseType.dumbbell;
      case 4:
        return ExerciseType.other;
      case 5:
        return ExerciseType.cable;
      case 6:
        return ExerciseType.machine;
      default:
        return ExerciseType.bodyweight;
    }
  }

  @override
  void write(BinaryWriter writer, ExerciseType obj) {
    switch (obj) {
      case ExerciseType.bodyweight:
        writer.writeByte(0);
        break;
      case ExerciseType.barbell:
        writer.writeByte(1);
        break;
      case ExerciseType.cardio:
        writer.writeByte(2);
        break;
      case ExerciseType.dumbbell:
        writer.writeByte(3);
        break;
      case ExerciseType.other:
        writer.writeByte(4);
        break;
      case ExerciseType.cable:
        writer.writeByte(5);
        break;
      case ExerciseType.machine:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExerciseTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EffortTypeAdapter extends TypeAdapter<EffortType> {
  @override
  final int typeId = 5;

  @override
  EffortType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return EffortType.rpe;
      case 1:
        return EffortType.rir;
      case 2:
        return EffortType.repRange;
      case 3:
        return EffortType.isometric;
      case 4:
        return EffortType.other;
      default:
        return EffortType.rpe;
    }
  }

  @override
  void write(BinaryWriter writer, EffortType obj) {
    switch (obj) {
      case EffortType.rpe:
        writer.writeByte(0);
        break;
      case EffortType.rir:
        writer.writeByte(1);
        break;
      case EffortType.repRange:
        writer.writeByte(2);
        break;
      case EffortType.isometric:
        writer.writeByte(3);
        break;
      case EffortType.other:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EffortTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserExerciseImplAdapter extends TypeAdapter<_$UserExerciseImpl> {
  @override
  final int typeId = 1;

  @override
  _$UserExerciseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserExerciseImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      exerciseType: fields[2] as ExerciseType?,
      effortType: fields[3] as EffortType?,
      createdAt: fields[4] as int,
      updatedAt: fields[5] as int,
      targettedMuscleGroups: (fields[6] as List).cast<MuscleGroup>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$UserExerciseImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.exerciseType)
      ..writeByte(3)
      ..write(obj.effortType)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.targettedMuscleGroups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserExerciseImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserExerciseImpl _$$UserExerciseImplFromJson(Map<String, dynamic> json) =>
    _$UserExerciseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      exerciseType:
          $enumDecodeNullable(_$ExerciseTypeEnumMap, json['exerciseType']),
      effortType: $enumDecodeNullable(_$EffortTypeEnumMap, json['effortType']),
      createdAt: (json['createdAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num).toInt(),
      targettedMuscleGroups: (json['targettedMuscleGroups'] as List<dynamic>)
          .map((e) => $enumDecode(_$MuscleGroupEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$UserExerciseImplToJson(_$UserExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'exerciseType': _$ExerciseTypeEnumMap[instance.exerciseType],
      'effortType': _$EffortTypeEnumMap[instance.effortType],
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'targettedMuscleGroups': instance.targettedMuscleGroups
          .map((e) => _$MuscleGroupEnumMap[e]!)
          .toList(),
    };

const _$ExerciseTypeEnumMap = {
  ExerciseType.bodyweight: 'bodyweight',
  ExerciseType.barbell: 'barbell',
  ExerciseType.cardio: 'cardio',
  ExerciseType.dumbbell: 'dumbbell',
  ExerciseType.other: 'other',
  ExerciseType.cable: 'cable',
  ExerciseType.machine: 'machine',
};

const _$EffortTypeEnumMap = {
  EffortType.rpe: 'rpe',
  EffortType.rir: 'rir',
  EffortType.repRange: 'repRange',
  EffortType.isometric: 'isometric',
  EffortType.other: 'other',
};

const _$MuscleGroupEnumMap = {
  MuscleGroup.rhomboid: 'rhomboid',
  MuscleGroup.semimembranosus: 'semimembranosus',
  MuscleGroup.upperTraps: 'upperTraps',
  MuscleGroup.gastrocnemius: 'gastrocnemius',
  MuscleGroup.soleus: 'soleus',
  MuscleGroup.midTraps: 'midTraps',
  MuscleGroup.teresMajor: 'teresMajor',
  MuscleGroup.lats: 'lats',
  MuscleGroup.tricepsLongHead: 'tricepsLongHead',
  MuscleGroup.obliques: 'obliques',
  MuscleGroup.infraspinatus: 'infraspinatus',
  MuscleGroup.rearDelts: 'rearDelts',
  MuscleGroup.extensorCarpi: 'extensorCarpi',
  MuscleGroup.gluteusMaximus: 'gluteusMaximus',
  MuscleGroup.gluteusMedius: 'gluteusMedius',
  MuscleGroup.semiTendinosis: 'semiTendinosis',
  MuscleGroup.adductor: 'adductor',
  MuscleGroup.bicepsFemoris: 'bicepsFemoris',
  MuscleGroup.forearms: 'forearms',
  MuscleGroup.lowerBack: 'lowerBack',
  MuscleGroup.outerThigh: 'outerThigh',
  MuscleGroup.extensorCarpiUlnaris: 'extensorCarpiUlnaris',
  MuscleGroup.extensorDigitorum: 'extensorDigitorum',
  MuscleGroup.upperObliques: 'upperObliques',
  MuscleGroup.biceps: 'biceps',
  MuscleGroup.brachialis: 'brachialis',
  MuscleGroup.brachioradialis: 'brachioradialis',
  MuscleGroup.extensorCarpiRadialis: 'extensorCarpiRadialis',
  MuscleGroup.externalObliques: 'externalObliques',
  MuscleGroup.flexorCarpiRadialis: 'flexorCarpiRadialis',
  MuscleGroup.frontDelts: 'frontDelts',
  MuscleGroup.omohyoid: 'omohyoid',
  MuscleGroup.pecMajor: 'pecMajor',
  MuscleGroup.peroneusLongus: 'peroneusLongus',
  MuscleGroup.lowerAbs: 'lowerAbs',
  MuscleGroup.upperAbs: 'upperAbs',
  MuscleGroup.rectusFemoris: 'rectusFemoris',
  MuscleGroup.sartorius: 'sartorius',
  MuscleGroup.serratusAnterior: 'serratusAnterior',
  MuscleGroup.sternocleidomastoid: 'sternocleidomastoid',
  MuscleGroup.tfl: 'tfl',
  MuscleGroup.tricepsMedialHead: 'tricepsMedialHead',
  MuscleGroup.vlo: 'vlo',
  MuscleGroup.vmo: 'vmo',
};
