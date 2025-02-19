import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';

class _Constants {
  static const double defaultOnTapScalingFactor = 0.96;
  static const Duration defaultOnTapScalingDuration = Duration(
    milliseconds: 200,
  );
}

class TappableWidget extends StatelessWidget {
  const TappableWidget({
    required this.child,
    super.key,
    this.onTap,
    this.shouldScaleOnTap = true,
    this.scale = _Constants.defaultOnTapScalingFactor,
    this.duration = _Constants.defaultOnTapScalingDuration,
    this.scaleAnimationCurve = Curves.easeInOut,
    this.throttleDuration = Duration.zero,
  });

  final Widget child;
  final double scale;
  final bool shouldScaleOnTap;
  final VoidCallback? onTap;
  final Duration duration;
  final Curve scaleAnimationCurve;
  final Duration throttleDuration;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TappableWidgetCubit(
        animationDuration: duration,
        onTap: onTap,
        throttleDuration: throttleDuration,
      ),
      child: BlocSelector<TappableWidgetCubit, bool, bool>(
        selector: (state) {
          return state;
        },
        builder: (context, isPressed) {
          return Semantics(
            button: true,
            child: GestureDetector(
              onTap: () {
                context.read<TappableWidgetCubit>().buttonTapped();
              },
              behavior: HitTestBehavior.translucent,
              onTapDown: (details) {
                context.read<TappableWidgetCubit>().setIsPressed(value: true);
              },
              onLongPress: () {
                context.read<TappableWidgetCubit>().setIsPressed(value: true);
              },
              onLongPressEnd: (details) {
                context.read<TappableWidgetCubit>().setIsPressed(value: false);
              },
              onTapUp: (details) {
                context.read<TappableWidgetCubit>().setIsPressed(value: false);
              },
              onTapCancel: () {
                context.read<TappableWidgetCubit>().setIsPressed(value: false);
              },
              child: AnimatedScale(
                scale: shouldScaleOnTap && isPressed ? scale : 1,
                duration: duration,
                curve: scaleAnimationCurve,
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
