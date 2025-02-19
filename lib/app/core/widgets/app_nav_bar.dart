import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/app/app.dart';

enum _NavBarButton {
  home,
  sessions,
  journal,
  statistics,
  settings;

  void onTap({
    required BuildContext context,
  }) {
    switch (this) {
      case _NavBarButton.home:
        {
          context.goNamed(Routes.home.name);
        }
      case _NavBarButton.sessions:
        {
          context.goNamed(Routes.sessions.name);
        }
      case _NavBarButton.journal:
        {
          context.goNamed(Routes.journal.name);
        }
      case _NavBarButton.statistics:
        {
          context.goNamed(Routes.statistics.name);
        }
      case _NavBarButton.settings:
        {
          context.goNamed(Routes.settings.name);
        }
    }
  }

  String get path => switch (this) {
        _NavBarButton.home => Routes.home.name,
        _NavBarButton.sessions => Routes.sessions.name,
        _NavBarButton.journal => Routes.journal.name,
        _NavBarButton.statistics => Routes.statistics.name,
        _NavBarButton.settings => Routes.settings.name,
      };

  Widget getWidget({
    required bool isSelected,
  }) {
    final color = isSelected ? AppColors.selectedColor : AppColors.idleColor;
    return switch (this) {
      home => SvgManager.home(
          color: color,
        ),
      sessions => SvgManager.dumbbell(
          color: color,
        ),
      journal => SvgManager.journal(
          color: color,
        ),
      statistics => SvgManager.stats(
          color: color,
        ),
      settings => SvgManager.settings(
          color: color,
        ),
    };
  }
}

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    required this.state,
    super.key,
  });

  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: DesignSystem.bottomNavBarPadding,
      height: AppConstants.navBarHeight,
      decoration: BoxDecoration(
        color: AppColors.navBarBackground,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            DesignSystem.smallBorderRadiusValue,
          ),
          topRight: Radius.circular(
            DesignSystem.smallBorderRadiusValue,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _NavBarButton.values
            .map(
              (button) => _buildButton(
                context: context,
                button: button,
                isSelected: state.topRoute?.name == button.path,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required _NavBarButton button,
    required bool isSelected,
  }) {
    return TappableWidget(
      onTap: () => button.onTap(
        context: context,
      ),
      child: Padding(
        padding: DesignSystem.buttonPadding,
        child: button.getWidget(
          isSelected: isSelected,
        ),
      ),
    );
  }
}
