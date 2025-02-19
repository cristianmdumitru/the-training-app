import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training_app/body_statistics/body_statistics.dart';

class HumanBody extends StatelessWidget {
  const HumanBody({
    required this.view,
    required this.behavior,
    super.key,
  });

  final BodyView view;
  final BodyBehavior behavior;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Stack(
        children: [
          _buildBackground(
            context,
            view,
          ),
          ...HumanBodyUtils.getMuscleGroups(
            bodyView: view,
            behavior: behavior,
          ),
          _buildOutline(
            context,
            view,
          ),
        ],
      ),
    );
  }

  Widget _buildBackground(
    BuildContext context,
    BodyView view,
  ) {
    final backgroundAsset = switch (view) {
      BodyView.front => BodyAssets.frontBackground,
      BodyView.back => BodyAssets.backBackground,
    };
    return SvgPicture.asset(
      backgroundAsset,
      colorFilter: const ColorFilter.mode(
        Colors.white,
        BlendMode.srcIn,
      ),
    );
  }

  Widget _buildOutline(
    BuildContext context,
    BodyView view,
  ) {
    final outlineAsset = switch (view) {
      BodyView.front => BodyAssets.frontOutline,
      BodyView.back => BodyAssets.backOutline,
    };
    return SvgPicture.asset(
      outlineAsset,
    );
  }
}
