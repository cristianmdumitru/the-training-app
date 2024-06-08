import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/body_statistics/body_statistics.dart';

class BodyStatistics extends StatefulWidget {
  const BodyStatistics({super.key});

  @override
  State<BodyStatistics> createState() => _BodyStatisticsState();
}

class _BodyStatisticsState extends State<BodyStatistics> {
  late BodyView _bodyView;

  @override
  void initState() {
    super.initState();
    _bodyView = BodyView.front;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BodyStatisticsCubit>()..getSessions(),
      child: GestureDetector(
        onTap: () {
          setState(() {
            final newBodyView = switch (_bodyView) {
              BodyView.back => BodyView.front,
              BodyView.front => BodyView.back,
            };
            _bodyView = newBodyView;
          });
        },
        child: AnimatedCrossFade(
          firstChild: HumanBody(
            key: ValueKey<String>(BodyView.front.name),
            view: BodyView.front,
          ),
          secondChild: HumanBody(
            key: ValueKey<String>(BodyView.back.name),
            view: BodyView.back,
          ),
          crossFadeState: _bodyView == BodyView.front
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 400),
        ),
      ),
    );
  }
}
