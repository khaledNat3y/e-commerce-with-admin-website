import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'font_weight_helper.dart';


abstract class AppTheme {
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kPrimaryColor
  );
}