import 'package:flutter/material.dart';
import 'package:training_app/app/app.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: DesignSystem.padding,
      decoration: BoxDecoration(
        borderRadius: DesignSystem.medBorderRadius,
        color: AppColors.navBarBackground,
      ),
      child: child,
    );
  }
}
