// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_session.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MuscleGroupAdapter extends TypeAdapter<MuscleGroup> {
  @override
  final int typeId = 7;

  @override
  MuscleGroup read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MuscleGroup.rhomboid;
      case 1:
        return MuscleGroup.semimembranosus;
      case 2:
        return MuscleGroup.upperTraps;
      case 3:
        return MuscleGroup.gastrocnemius;
      case 4:
        return MuscleGroup.soleus;
      case 5:
        return MuscleGroup.midTraps;
      case 6:
        return MuscleGroup.teresMajor;
      case 7:
        return MuscleGroup.lats;
      case 8:
        return MuscleGroup.tricepsLongHead;
      case 9:
        return MuscleGroup.obliques;
      case 10:
        return MuscleGroup.infraspinatus;
      case 11:
        return MuscleGroup.rearDelts;
      case 12:
        return MuscleGroup.extensorCarpi;
      case 13:
        return MuscleGroup.gluteusMaximus;
      case 14:
        return MuscleGroup.gluteusMedius;
      case 15:
        return MuscleGroup.semiTendinosis;
      case 16:
        return MuscleGroup.adductor;
      case 17:
        return MuscleGroup.bicepsFemoris;
      case 18:
        return MuscleGroup.forearms;
      case 19:
        return MuscleGroup.lowerBack;
      case 20:
        return MuscleGroup.outerThigh;
      case 21:
        return MuscleGroup.extensorCarpiUlnaris;
      case 22:
        return MuscleGroup.extensorDigitorum;
      case 23:
        return MuscleGroup.upperObliques;
      case 24:
        return MuscleGroup.biceps;
      case 25:
        return MuscleGroup.brachialis;
      case 26:
        return MuscleGroup.brachioradialis;
      case 27:
        return MuscleGroup.extensorCarpiRadialis;
      case 28:
        return MuscleGroup.externalObliques;
      case 29:
        return MuscleGroup.flexorCarpiRadialis;
      case 30:
        return MuscleGroup.frontDelts;
      case 31:
        return MuscleGroup.omohyoid;
      case 32:
        return MuscleGroup.pecMajor;
      case 33:
        return MuscleGroup.peroneusLongus;
      case 34:
        return MuscleGroup.lowerAbs;
      case 35:
        return MuscleGroup.upperAbs;
      case 36:
        return MuscleGroup.rectusFemoris;
      case 37:
        return MuscleGroup.sartorius;
      case 38:
        return MuscleGroup.serratusAnterior;
      case 39:
        return MuscleGroup.sternocleidomastoid;
      case 40:
        return MuscleGroup.tfl;
      case 41:
        return MuscleGroup.tricepsMedialHead;
      case 42:
        return MuscleGroup.vlo;
      case 43:
        return MuscleGroup.vmo;
      default:
        return MuscleGroup.rhomboid;
    }
  }

  @override
  void write(BinaryWriter writer, MuscleGroup obj) {
    switch (obj) {
      case MuscleGroup.rhomboid:
        writer.writeByte(0);
        break;
      case MuscleGroup.semimembranosus:
        writer.writeByte(1);
        break;
      case MuscleGroup.upperTraps:
        writer.writeByte(2);
        break;
      case MuscleGroup.gastrocnemius:
        writer.writeByte(3);
        break;
      case MuscleGroup.soleus:
        writer.writeByte(4);
        break;
      case MuscleGroup.midTraps:
        writer.writeByte(5);
        break;
      case MuscleGroup.teresMajor:
        writer.writeByte(6);
        break;
      case MuscleGroup.lats:
        writer.writeByte(7);
        break;
      case MuscleGroup.tricepsLongHead:
        writer.writeByte(8);
        break;
      case MuscleGroup.obliques:
        writer.writeByte(9);
        break;
      case MuscleGroup.infraspinatus:
        writer.writeByte(10);
        break;
      case MuscleGroup.rearDelts:
        writer.writeByte(11);
        break;
      case MuscleGroup.extensorCarpi:
        writer.writeByte(12);
        break;
      case MuscleGroup.gluteusMaximus:
        writer.writeByte(13);
        break;
      case MuscleGroup.gluteusMedius:
        writer.writeByte(14);
        break;
      case MuscleGroup.semiTendinosis:
        writer.writeByte(15);
        break;
      case MuscleGroup.adductor:
        writer.writeByte(16);
        break;
      case MuscleGroup.bicepsFemoris:
        writer.writeByte(17);
        break;
      case MuscleGroup.forearms:
        writer.writeByte(18);
        break;
      case MuscleGroup.lowerBack:
        writer.writeByte(19);
        break;
      case MuscleGroup.outerThigh:
        writer.writeByte(20);
        break;
      case MuscleGroup.extensorCarpiUlnaris:
        writer.writeByte(21);
        break;
      case MuscleGroup.extensorDigitorum:
        writer.writeByte(22);
        break;
      case MuscleGroup.upperObliques:
        writer.writeByte(23);
        break;
      case MuscleGroup.biceps:
        writer.writeByte(24);
        break;
      case MuscleGroup.brachialis:
        writer.writeByte(25);
        break;
      case MuscleGroup.brachioradialis:
        writer.writeByte(26);
        break;
      case MuscleGroup.extensorCarpiRadialis:
        writer.writeByte(27);
        break;
      case MuscleGroup.externalObliques:
        writer.writeByte(28);
        break;
      case MuscleGroup.flexorCarpiRadialis:
        writer.writeByte(29);
        break;
      case MuscleGroup.frontDelts:
        writer.writeByte(30);
        break;
      case MuscleGroup.omohyoid:
        writer.writeByte(31);
        break;
      case MuscleGroup.pecMajor:
        writer.writeByte(32);
        break;
      case MuscleGroup.peroneusLongus:
        writer.writeByte(33);
        break;
      case MuscleGroup.lowerAbs:
        writer.writeByte(34);
        break;
      case MuscleGroup.upperAbs:
        writer.writeByte(35);
        break;
      case MuscleGroup.rectusFemoris:
        writer.writeByte(36);
        break;
      case MuscleGroup.sartorius:
        writer.writeByte(37);
        break;
      case MuscleGroup.serratusAnterior:
        writer.writeByte(38);
        break;
      case MuscleGroup.sternocleidomastoid:
        writer.writeByte(39);
        break;
      case MuscleGroup.tfl:
        writer.writeByte(40);
        break;
      case MuscleGroup.tricepsMedialHead:
        writer.writeByte(41);
        break;
      case MuscleGroup.vlo:
        writer.writeByte(42);
        break;
      case MuscleGroup.vmo:
        writer.writeByte(43);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MuscleGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TrainingSessionImplAdapter extends TypeAdapter<_$TrainingSessionImpl> {
  @override
  final int typeId = 0;

  @override
  _$TrainingSessionImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TrainingSessionImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      exercises: (fields[2] as List).cast<SessionExercise>(),
      createdAt: fields[3] as int,
      updatedAt: fields[4] as int,
      setsCount: (fields[5] as Map).cast<MuscleGroup, int>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$TrainingSessionImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(2)
      ..write(obj.exercises)
      ..writeByte(5)
      ..write(obj.setsCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainingSessionImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingSessionImpl _$$TrainingSessionImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingSessionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => SessionExercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: (json['createdAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num).toInt(),
      setsCount: (json['setsCount'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$MuscleGroupEnumMap, k), (e as num).toInt()),
      ),
    );

Map<String, dynamic> _$$TrainingSessionImplToJson(
        _$TrainingSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'exercises': instance.exercises,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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
