// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_exercise.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SessionExerciseImplAdapter extends TypeAdapter<_$SessionExerciseImpl> {
  @override
  final int typeId = 3;

  @override
  _$SessionExerciseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SessionExerciseImpl(
      id: fields[0] as String,
      baseExercise: fields[1] as UserExercise,
      sessionId: fields[2] as String,
      sets: (fields[3] as List).cast<ExerciseSet>(),
      setsCount: (fields[4] as Map).cast<MuscleGroup, int>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$SessionExerciseImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.baseExercise)
      ..writeByte(2)
      ..write(obj.sessionId)
      ..writeByte(3)
      ..write(obj.sets)
      ..writeByte(4)
      ..write(obj.setsCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionExerciseImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionExerciseImpl _$$SessionExerciseImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionExerciseImpl(
      id: json['id'] as String,
      baseExercise:
          UserExercise.fromJson(json['baseExercise'] as Map<String, dynamic>),
      sessionId: json['sessionId'] as String,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => ExerciseSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      setsCount: (json['setsCount'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$MuscleGroupEnumMap, k), (e as num).toInt()),
      ),
    );

Map<String, dynamic> _$$SessionExerciseImplToJson(
        _$SessionExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'baseExercise': instance.baseExercise,
      'sessionId': instance.sessionId,
      'sets': instance.sets,
      'setsCount': instance.setsCount
          .map((k, e) => MapEntry(_$MuscleGroupEnumMap[k]!, e)),
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
