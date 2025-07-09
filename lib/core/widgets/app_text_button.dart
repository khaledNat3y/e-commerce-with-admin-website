import 'package:flutter/material.dart';

import '../theming/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      required this.buttonText,
      required this.textStyle,
      required this.onPressed, this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 16))),
          backgroundColor: WidgetStatePropertyAll(
              backgroundColor ?? AppColors.kPrimaryColor),
          padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 12,
              vertical: verticalPadding ?? 14)),
          fixedSize: WidgetStateProperty.all(Size(
              buttonWidth ?? double.maxFinite,
              buttonHeight ?? 50))),
      child: Text(buttonText, style: textStyle ,),
    );
  }
}
