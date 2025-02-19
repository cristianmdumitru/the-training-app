import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';

class TappableWidgetCubit extends Cubit<bool> {
  TappableWidgetCubit({
    required Duration animationDuration,
    required this.onTap,
    required this.throttleDuration,
  }) : super(false) {
    _animationDuration = animationDuration;

    if (throttleDuration > Duration.zero && onTap != null) {
      _throttledOnTap = throttle(
        () async {
          onTap!();
        },
        throttleDuration: throttleDuration,
      );
    } else {
      _throttledOnTap = () async {
        onTap?.call();
      };
    }
  }
  late final Duration _animationDuration;
  final VoidCallback? onTap;
  final Duration throttleDuration;

  late final Future<void> Function() _throttledOnTap;

  void setIsPressed({
    required bool value,
  }) {
    emit(value);
  }

  Future<void> buttonTapped() async {
    emit(true);
    await _throttledOnTap();
    Future.delayed(_animationDuration, () {
      if (!isClosed) {
        emit(false);
      }
    });
  }
}
