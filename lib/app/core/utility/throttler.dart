import 'dart:async';

typedef ThrottledCallback = Future<void> Function();

ThrottledCallback throttle(
  ThrottledCallback callback, {
  Duration throttleDuration = const Duration(milliseconds: 500),
}) {
  _ThrottleTimer? throttleTimer;

  return () async {
    if (throttleTimer?.isCompleted ?? true) {
      await callback();
      throttleTimer = _ThrottleTimer(throttleDuration);
    }
  };
}

class _ThrottleTimer {
  _ThrottleTimer(this.duration) {
    _timer = Timer(duration, _onComplete);
  }

  final Duration duration;
  late final Timer _timer;
  final Completer<void> _completer = Completer<void>();

  void _onComplete() {
    _completer.complete();
  }

  bool get isCompleted => _completer.isCompleted;

  void cancel() {
    _timer.cancel();
    if (!_completer.isCompleted) {
      _completer.completeError(const _CancelException());
    }
  }
}

class _CancelException implements Exception {
  const _CancelException();
}
