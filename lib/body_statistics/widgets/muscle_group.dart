import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training_app/body_statistics/body_statistics.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise_management/user_exercise_management.dart';

class MuscleGroupWidget extends StatelessWidget {
  const MuscleGroupWidget({
    required this.muscleGroup,
    required this.bodyView,
    required this.behavior,
    super.key,
  });

  final MuscleGroup muscleGroup;
  final BodyView bodyView;
  final BodyBehavior behavior;

  @override
  Widget build(BuildContext context) {
    switch (behavior) {
      case BodyBehavior.displayStatistics:
        return BlocSelector<BodyStatisticsCubit, BodyStatisticsState,
            Map<MuscleGroup, int>>(
          selector: (state) {
            return state.setsCount;
          },
          builder: (context, setsCount) {
            return _buildAsset(
              muscleGroup,
              setsCount,
            );
          },
        );
      case BodyBehavior.muscleGroupsSelection:
        {
          return BlocSelector<UserExerciseManagementCubit,
              UserExerciseManagementState, List<MuscleGroup>>(
            selector: (state) {
              return state.userExercise.targettedMuscleGroups;
            },
            builder: (context, targettedMuscleGroups) {
              final setsCount = {
                for (final group in targettedMuscleGroups) group: 3,
              };
              return _buildAsset(
                muscleGroup,
                setsCount,
              );
            },
          );
        }
    }
  }

  Widget _buildAsset(
    MuscleGroup muscleGroup,
    Map<MuscleGroup, int> setsCount,
  ) {
    final sets = setsCount[muscleGroup] ?? 0;
    return SvgPicture.asset(
      _getAssetByView(bodyView),
      colorFilter: ColorFilter.mode(
        HumanBodyUtils.getColorBySetsCount(
          sets,
        ),
        BlendMode.srcIn,
      ),
    );
  }

  String _getAssetByView(BodyView view) {
    return switch (view) {
      BodyView.front => muscleGroup.frontAsset,
      BodyView.back => muscleGroup.backAsset,
    };
  }
}
