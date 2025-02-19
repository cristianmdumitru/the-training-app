import 'package:flutter/material.dart';
import 'package:training_app/body_statistics/body_statistics.dart';

class BodySwitcher extends StatefulWidget {
  const BodySwitcher({
    required this.behavior,
    super.key,
  });

  final BodyBehavior behavior;

  @override
  State<BodySwitcher> createState() => _BodySwitcherState();
}

class _BodySwitcherState extends State<BodySwitcher> {
  late BodyView _bodyView;

  @override
  void initState() {
    super.initState();
    _bodyView = BodyView.front;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AnimatedCrossFade(
          firstChild: HumanBody(
            key: ValueKey<String>(BodyView.front.name),
            view: BodyView.front,
            behavior: widget.behavior,
          ),
          secondChild: HumanBody(
            key: ValueKey<String>(BodyView.back.name),
            view: BodyView.back,
            behavior: widget.behavior,
          ),
          crossFadeState: _bodyView == BodyView.front
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 400),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              final newBodyView = switch (_bodyView) {
                BodyView.back => BodyView.front,
                BodyView.front => BodyView.back,
              };
              _bodyView = newBodyView;
            });
          },
          child: const Text('Flip'),
        ),
      ],
    );
  }
}
