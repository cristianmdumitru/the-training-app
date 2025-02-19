import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/body_statistics/body_statistics.dart';

class BodyStatistics extends StatelessWidget {
  const BodyStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BodyStatisticsCubit>()..getSessions(),
      child: const Scaffold(
        appBar: CustomAppBar(title: 'Body statistics'),
        body: Padding(
          padding: DesignSystem.padding,
          child: Column(
            children: [
              _StatisticsCard(),
              BodySwitcher(
                behavior: BodyBehavior.displayStatistics,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatisticsCard extends StatelessWidget {
  const _StatisticsCard();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BodyStatisticsCubit, BodyStatisticsState>(
      builder: (context, state) {
        return MainCard(
          child: Column(
            children: [
              _buildCustomRow(
                context: context,
                primaryText: '${state.lastSessions.length}',
                secondaryText: '${state.tonnage} KG',
                ternaryText: '${(state.coverage * 100).toInt()}%',
                isSecondRow: false,
              ),
              _buildCustomRow(
                context: context,
                primaryText:
                    state.lastSessions.length == 1 ? 'Session' : 'Sessions',
                secondaryText: 'Accumulated tonnage',
                ternaryText: 'Coverage',
                isSecondRow: true,
              ),
            ],
          ),
        );
      },
    );
  }

  Row _buildCustomRow({
    required BuildContext context,
    required String primaryText,
    required String secondaryText,
    required String ternaryText,
    required bool isSecondRow,
  }) {
    return Row(
      children: [
        Expanded(
          child: Text(
            primaryText,
            textAlign: TextAlign.center,
            style: isSecondRow ? null : DesignSystem.getBoldTextStyle(context),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            textAlign: TextAlign.center,
            secondaryText,
            style: isSecondRow ? null : DesignSystem.getBoldTextStyle(context),
          ),
        ),
        Expanded(
          child: Text(
            ternaryText,
            textAlign: TextAlign.center,
            style: isSecondRow ? null : DesignSystem.getBoldTextStyle(context),
          ),
        ),
      ],
    );
  }
}
