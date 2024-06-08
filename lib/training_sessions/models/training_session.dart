import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
  vmo,
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
  }) = _TrainingSession;

  factory TrainingSession.fromJson(Map<String, dynamic> json) =>
      _$TrainingSessionFromJson(json);

  factory TrainingSession.empty() {
    return TrainingSession(
      id: const Uuid().v4(),
      name: 'New session',
      exercises: <SessionExercise>[],
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
      setsCount: {},
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
    );
  }
}
