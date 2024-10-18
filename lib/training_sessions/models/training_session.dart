import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:training_app/body_statistics/body_statistics.dart';
import 'package:training_app/session_exercise/session_exercise.dart';
import 'package:training_app/workout_templates/workout_templates.dart';
import 'package:uuid/uuid.dart';

part 'training_session.freezed.dart';
part 'training_session.g.dart';

@HiveType(typeId: 7)
enum MuscleGroup {
  @HiveField(0)
  rhomboid,
  @HiveField(1)
  semimembranosus,
  @HiveField(2)
  upperTraps,
  @HiveField(3)
  gastrocnemius,
  @HiveField(4)
  soleus,
  @HiveField(5)
  midTraps,
  @HiveField(6)
  teresMajor,
  @HiveField(7)
  lats,
  @HiveField(8)
  tricepsLongHead,
  @HiveField(9)
  obliques,
  @HiveField(10)
  infraspinatus,
  @HiveField(11)
  rearDelts,
  @HiveField(12)
  extensorCarpi,
  @HiveField(13)
  gluteusMaximus,
  @HiveField(14)
  gluteusMedius,
  @HiveField(15)
  semiTendinosis,
  @HiveField(16)
  adductor,
  @HiveField(17)
  bicepsFemoris,
  @HiveField(18)
  forearms,
  @HiveField(19)
  lowerBack,
  @HiveField(20)
  outerThigh,
  @HiveField(21)
  extensorCarpiUlnaris,
  @HiveField(22)
  extensorDigitorum,
  @HiveField(23)
  upperObliques,
  @HiveField(24)
  biceps,
  @HiveField(25)
  brachialis,
  @HiveField(26)
  brachioradialis,
  @HiveField(27)
  extensorCarpiRadialis,
  @HiveField(28)
  externalObliques,
  @HiveField(29)
  flexorCarpiRadialis,
  @HiveField(30)
  frontDelts,
  @HiveField(31)
  omohyoid,
  @HiveField(32)
  pecMajor,
  @HiveField(33)
  peroneusLongus,
  @HiveField(34)
  lowerAbs,
  @HiveField(35)
  upperAbs,
  @HiveField(36)
  rectusFemoris,
  @HiveField(37)
  sartorius,
  @HiveField(38)
  serratusAnterior,
  @HiveField(39)
  sternocleidomastoid,
  @HiveField(40)
  tfl,
  @HiveField(41)
  tricepsMedialHead,
  @HiveField(42)
  vlo,
  @HiveField(43)
  vmo;

  @override
  String toString() {
    switch (this) {
      case MuscleGroup.rhomboid:
        return 'Rhomboid';
      case MuscleGroup.semimembranosus:
        return 'Semimembranosus';
      case MuscleGroup.upperTraps:
        return 'Upper Traps';
      case MuscleGroup.gastrocnemius:
        return 'Gastrocnemius';
      case MuscleGroup.soleus:
        return 'Soleus';
      case MuscleGroup.midTraps:
        return 'Mid Traps';
      case MuscleGroup.teresMajor:
        return 'Teres Major';
      case MuscleGroup.lats:
        return 'Lats';
      case MuscleGroup.tricepsLongHead:
        return 'Triceps Long Head';
      case MuscleGroup.obliques:
        return 'Obliques';
      case MuscleGroup.infraspinatus:
        return 'Infraspinatus';
      case MuscleGroup.rearDelts:
        return 'Rear Delts';
      case MuscleGroup.extensorCarpi:
        return 'Extensor Carpi';
      case MuscleGroup.gluteusMaximus:
        return 'Gluteus Maximus';
      case MuscleGroup.gluteusMedius:
        return 'Gluteus Medius';
      case MuscleGroup.semiTendinosis:
        return 'Semitendinosis';
      case MuscleGroup.adductor:
        return 'Adductor';
      case MuscleGroup.bicepsFemoris:
        return 'Biceps Femoris';
      case MuscleGroup.forearms:
        return 'Forearms';
      case MuscleGroup.lowerBack:
        return 'Lower Back';
      case MuscleGroup.outerThigh:
        return 'Outer Thigh';
      case MuscleGroup.extensorCarpiUlnaris:
        return 'Extensor Carpi Ulnaris';
      case MuscleGroup.extensorDigitorum:
        return 'Extensor Digitorum';
      case MuscleGroup.upperObliques:
        return 'Upper Obliques';
      case MuscleGroup.biceps:
        return 'Biceps';
      case MuscleGroup.brachialis:
        return 'Brachialis';
      case MuscleGroup.brachioradialis:
        return 'Brachioradialis';
      case MuscleGroup.extensorCarpiRadialis:
        return 'Extensor Carpi Radialis';
      case MuscleGroup.externalObliques:
        return 'External Obliques';
      case MuscleGroup.flexorCarpiRadialis:
        return 'Flexor Carpi Radialis';
      case MuscleGroup.frontDelts:
        return 'Front Delts';
      case MuscleGroup.omohyoid:
        return 'Omohyoid';
      case MuscleGroup.pecMajor:
        return 'Pec Major';
      case MuscleGroup.peroneusLongus:
        return 'Peroneus Longus';
      case MuscleGroup.lowerAbs:
        return 'Lower Abs';
      case MuscleGroup.upperAbs:
        return 'Upper Abs';
      case MuscleGroup.rectusFemoris:
        return 'Rectus Femoris';
      case MuscleGroup.sartorius:
        return 'Sartorius';
      case MuscleGroup.serratusAnterior:
        return 'Serratus Anterior';
      case MuscleGroup.sternocleidomastoid:
        return 'Sternocleidomastoid';
      case MuscleGroup.tfl:
        return 'TFL';
      case MuscleGroup.tricepsMedialHead:
        return 'Triceps Medial Head';
      case MuscleGroup.vlo:
        return 'VLO';
      case MuscleGroup.vmo:
        return 'VMO';
    }
  }

  String get frontAsset => switch (this) {
        MuscleGroup.rhomboid => throw UnimplementedError(),
        MuscleGroup.semimembranosus => throw UnimplementedError(),
        MuscleGroup.upperTraps => BodyAssets.frontUpperTraps,
        MuscleGroup.gastrocnemius => BodyAssets.gastrocnemius,
        MuscleGroup.soleus => BodyAssets.soleus,
        MuscleGroup.midTraps => throw UnimplementedError(),
        MuscleGroup.teresMajor => throw UnimplementedError(),
        MuscleGroup.lats => throw UnimplementedError(),
        MuscleGroup.tricepsLongHead => BodyAssets.tricepsLong,
        MuscleGroup.obliques => BodyAssets.externalObliques,
        MuscleGroup.infraspinatus => throw UnimplementedError(),
        MuscleGroup.rearDelts => throw UnimplementedError(),
        MuscleGroup.extensorCarpi => throw UnimplementedError(),
        MuscleGroup.gluteusMaximus => throw UnimplementedError(),
        MuscleGroup.gluteusMedius => throw UnimplementedError(),
        MuscleGroup.semiTendinosis => throw UnimplementedError(),
        MuscleGroup.adductor => BodyAssets.adductorLongus,
        MuscleGroup.bicepsFemoris => throw UnimplementedError(),
        MuscleGroup.forearms => throw UnimplementedError(),
        MuscleGroup.lowerBack => throw UnimplementedError(),
        MuscleGroup.outerThigh => throw UnimplementedError(),
        MuscleGroup.extensorCarpiUlnaris => throw UnimplementedError(),
        MuscleGroup.extensorDigitorum => throw UnimplementedError(),
        MuscleGroup.upperObliques => throw UnimplementedError(),
        MuscleGroup.biceps => BodyAssets.bicepsBrachii,
        MuscleGroup.brachialis => BodyAssets.brachialis,
        MuscleGroup.brachioradialis => BodyAssets.brachioradialis,
        MuscleGroup.extensorCarpiRadialis => BodyAssets.extensorCarpiRadialis,
        MuscleGroup.externalObliques => BodyAssets.externalObliques,
        MuscleGroup.flexorCarpiRadialis => BodyAssets.flexorCarpiRadialis,
        MuscleGroup.frontDelts => BodyAssets.frontDelts,
        MuscleGroup.omohyoid => BodyAssets.omohyoid,
        MuscleGroup.pecMajor => BodyAssets.pecMajor,
        MuscleGroup.peroneusLongus => BodyAssets.peroneusLongus,
        MuscleGroup.lowerAbs => BodyAssets.lowerAbs,
        MuscleGroup.upperAbs => BodyAssets.upperAbs,
        MuscleGroup.rectusFemoris => BodyAssets.rectusFemoris,
        MuscleGroup.sartorius => BodyAssets.sartorius,
        MuscleGroup.serratusAnterior => BodyAssets.serratusAnterior,
        MuscleGroup.sternocleidomastoid => BodyAssets.sternocleidomastoid,
        MuscleGroup.tfl => BodyAssets.tfl,
        MuscleGroup.tricepsMedialHead => BodyAssets.tricepsMedial,
        MuscleGroup.vlo => BodyAssets.vlo,
        MuscleGroup.vmo => BodyAssets.vmo,
      };

  String get backAsset => switch (this) {
        MuscleGroup.rhomboid => BodyAssets.rhomboid,
        MuscleGroup.semimembranosus => BodyAssets.semimembranosus,
        MuscleGroup.upperTraps => BodyAssets.backUpperTraps,
        MuscleGroup.gastrocnemius => BodyAssets.backGastrocnemius,
        MuscleGroup.soleus => BodyAssets.backSoleus,
        MuscleGroup.midTraps => BodyAssets.midTraps,
        MuscleGroup.teresMajor => BodyAssets.teresMajor,
        MuscleGroup.lats => BodyAssets.lats,
        MuscleGroup.tricepsLongHead => BodyAssets.backTricepsLong,
        MuscleGroup.obliques => BodyAssets.backObliques,
        MuscleGroup.infraspinatus => BodyAssets.infraspinatus,
        MuscleGroup.rearDelts => BodyAssets.rearDelts,
        MuscleGroup.extensorCarpi => BodyAssets.extensorCarpi,
        MuscleGroup.gluteusMaximus => BodyAssets.gluteusMaximus,
        MuscleGroup.gluteusMedius => BodyAssets.gluteusMedius,
        MuscleGroup.semiTendinosis => BodyAssets.semiTendinosis,
        MuscleGroup.adductor => BodyAssets.backAdductor,
        MuscleGroup.bicepsFemoris => BodyAssets.bicepsFemoris,
        MuscleGroup.forearms => BodyAssets.backForearms,
        MuscleGroup.lowerBack => BodyAssets.lowerBack,
        MuscleGroup.outerThigh => BodyAssets.outerThigh,
        MuscleGroup.extensorCarpiUlnaris => BodyAssets.extensorCarpiUlnaris,
        MuscleGroup.extensorDigitorum => BodyAssets.extensorDigitorum,
        MuscleGroup.upperObliques => BodyAssets.backUpperObliques,
        MuscleGroup.biceps => throw UnimplementedError(),
        MuscleGroup.brachialis => throw UnimplementedError(),
        MuscleGroup.brachioradialis => throw UnimplementedError(),
        MuscleGroup.extensorCarpiRadialis => throw UnimplementedError(),
        MuscleGroup.externalObliques => throw UnimplementedError(),
        MuscleGroup.flexorCarpiRadialis => throw UnimplementedError(),
        MuscleGroup.frontDelts => throw UnimplementedError(),
        MuscleGroup.omohyoid => throw UnimplementedError(),
        MuscleGroup.pecMajor => throw UnimplementedError(),
        MuscleGroup.peroneusLongus => throw UnimplementedError(),
        MuscleGroup.lowerAbs => throw UnimplementedError(),
        MuscleGroup.upperAbs => throw UnimplementedError(),
        MuscleGroup.rectusFemoris => throw UnimplementedError(),
        MuscleGroup.sartorius => throw UnimplementedError(),
        MuscleGroup.serratusAnterior => throw UnimplementedError(),
        MuscleGroup.sternocleidomastoid => throw UnimplementedError(),
        MuscleGroup.tfl => throw UnimplementedError(),
        MuscleGroup.tricepsMedialHead => throw UnimplementedError(),
        MuscleGroup.vlo => throw UnimplementedError(),
        MuscleGroup.vmo => throw UnimplementedError(),
      };
}

@freezed
class TrainingSession with _$TrainingSession {
  @HiveType(typeId: 0)
  factory TrainingSession({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required List<SessionExercise> exercises,
    @HiveField(3) required int createdAt,
    @HiveField(4) required int updatedAt,
    @HiveField(5) required Map<MuscleGroup, int> setsCount,
    @HiveField(6) required String templateId,
  }) = _TrainingSession;

  factory TrainingSession.fromJson(Map<String, dynamic> json) =>
      _$TrainingSessionFromJson(json);

  factory TrainingSession.clone({
    required TrainingSession session,
  }) {
    return session.copyWith(
      id: const Uuid().v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    );
  }

  factory TrainingSession.fromTemplate({
    required WorkoutTemplate template,
  }) {
    final sessionId = const Uuid().v4();
    final exercises = template.exercises
        .map(
          (e) => SessionExercise.fromUserExercise(
            sessionId: sessionId,
            userExercise: e,
          ),
        )
        .toList();
    return TrainingSession(
      id: sessionId,
      name: template.name,
      exercises: exercises,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
      setsCount: {},
      templateId: template.id,
    );
  }
}
