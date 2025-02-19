import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:uuid/uuid.dart';

part 'workout_template.freezed.dart';
part 'workout_template.g.dart';

@freezed
class WorkoutTemplate with _$WorkoutTemplate {
  @HiveType(typeId: 6)
  factory WorkoutTemplate({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required List<UserExercise> exercises,
    @HiveField(3) required int createdAt,
    @HiveField(4) required int updatedAt,
  }) = _WorkoutTemplate;

  factory WorkoutTemplate.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTemplateFromJson(json);

  factory WorkoutTemplate.empty() {
    return WorkoutTemplate(
      id: const Uuid().v4(),
      name: 'New session',
      exercises: <UserExercise>[],
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    );
  }
}
