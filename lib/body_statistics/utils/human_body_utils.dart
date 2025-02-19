import 'package:flutter/material.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/body_statistics/body_statistics.dart';

class HumanBodyUtils {
  static double get lowOpacity => 0.2;
  static double get pastelOpacity => 0.5;
  static double get fullOpacity => 1;
  static Color getColorBySetsCount(int sets) {
    if (sets < 3) {
      return Colors.white.withOpacity(0.2);
    }
    if (sets >= 3 && sets < 6) {
      return Colors.green.withOpacity(pastelOpacity);
    }
    if (sets >= 6 && sets < 9) {
      return Colors.yellow.withOpacity(pastelOpacity);
    }
    if (sets >= 9 && sets < 12) {
      return Colors.orange.withOpacity(pastelOpacity);
    }
    if (sets >= 12 && sets < 20) {
      return Colors.red.withOpacity(pastelOpacity);
    }
    if (sets >= 20) {
      return Colors.red.shade900.withOpacity(pastelOpacity);
    }
    return Colors.transparent;
  }

  static List<Widget> getMuscleGroups({
    required BodyView bodyView,
    required BodyBehavior behavior,
  }) {
    final muscleGroups = switch (bodyView) {
      BodyView.back => AppConstants.backMuscles,
      BodyView.front => AppConstants.frontMuscles,
    };
    return muscleGroups
        .map(
          (muscleGroup) => MuscleGroupWidget(
            muscleGroup: muscleGroup,
            bodyView: bodyView,
            behavior: behavior,
          ),
        )
        .toList();
  }
}
