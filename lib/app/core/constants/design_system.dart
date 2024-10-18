import 'package:flutter/material.dart';
import 'package:training_app/app/app.dart';

class DesignSystem {
  static const SizedBox vSpace = SizedBox(
    height: 16,
  );
  static const SizedBox scrollableMargin = SizedBox(
    height: 64,
  );
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const EdgeInsets bottomMargin = EdgeInsets.only(bottom: 8);
  static const EdgeInsets verticalMargin = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets horizontalMargin =
      EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets leftPadding = EdgeInsets.only(left: 16);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 16);
  static const double setCardHeight = 48;
  static const double medBorderRadiusValue = 16;
  static final BorderRadius medBorderRadius =
      BorderRadius.circular(medBorderRadiusValue);

  static final OutlineInputBorder enabledInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.black15,
    ),
    borderRadius: medBorderRadius,
  );
  static final InputDecoration dropdownBorder = InputDecoration(
    contentPadding: verticalPadding,
    border: OutlineInputBorder(
      borderRadius: medBorderRadius,
    ),
    enabledBorder: enabledInputBorder,
  );
  static final InputDecoration textFieldBorder = InputDecoration(
    contentPadding: padding,
    border: OutlineInputBorder(
      borderRadius: medBorderRadius,
    ),
    enabledBorder: enabledInputBorder,
  );
  static Decoration get multiSelectionWidgetBorder {
    return BoxDecoration(
      color: Colors.transparent,
      borderRadius: medBorderRadius,
      border: Border.all(
        color: AppColors.black15,
      ),
    );
  }

  static TextStyle getHintTextStyle(BuildContext context) => TextStyle(
        color: Theme.of(context).hintColor,
        fontWeight: FontWeight.w500,
      );

  static Color getDividerColor(BuildContext context) =>
      Theme.of(context).dividerColor;

  static TextStyle getBoldTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!;

  static Color getExerciseCardBackgroundColor(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface.withOpacity(0.05);
}
