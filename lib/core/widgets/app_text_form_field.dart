import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import '../theming/app_theme.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField(
      {super.key,
      required this.hintText,
      this.isObscureText,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.kPrimaryColor,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? AppColors.white,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
              borderSide: const BorderSide(width: 1.3, color: AppColors.kPrimaryColor),
              borderRadius: BorderRadius.circular(16.0),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.3, color: Colors.red),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
              borderSide: const BorderSide(width: 1.3, color: AppColors.white),
              borderRadius: BorderRadius.circular(16.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.3, color: Colors.red),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? AppTheme.font24BlackBold,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: AppTheme.font24BlackBold,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
