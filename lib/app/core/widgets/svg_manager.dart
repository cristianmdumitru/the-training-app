import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training_app/app/core/constants/app_colors.dart';

class SvgManager {
  static const String basePath = 'assets/svg/';

  static Widget baseSvg({
    required String path,
    required double width,
    required double height,
    Color color = Colors.black,
  }) {
    return SvgPicture.asset(
      '$basePath$path',
      width: width,
      height: height,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }

  static Widget home({
    Size size = const Size(32, 32),
    Color color = AppColors.primaryWhite,
  }) =>
      baseSvg(
        path: 'buttons/home.svg',
        width: size.height,
        height: size.width,
        color: color,
      );

  static Widget dumbbell({
    Size size = const Size(32, 32),
    Color color = AppColors.primaryWhite,
  }) =>
      baseSvg(
        path: 'buttons/dumbbell.svg',
        width: size.height,
        height: size.width,
        color: color,
      );

  static Widget journal({
    Size size = const Size(32, 32),
    Color color = AppColors.primaryWhite,
  }) =>
      baseSvg(
        path: 'buttons/journal.svg',
        width: size.height,
        height: size.width,
        color: color,
      );

  static Widget stats({
    Size size = const Size(32, 32),
    Color color = AppColors.primaryWhite,
  }) =>
      baseSvg(
        path: 'buttons/stats.svg',
        width: size.height,
        height: size.width,
        color: color,
      );

  static Widget settings({
    Size size = const Size(32, 32),
    Color color = AppColors.primaryWhite,
  }) =>
      baseSvg(
        path: 'buttons/settings.svg',
        width: size.height,
        height: size.width,
        color: color,
      );
}
