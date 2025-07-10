import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'font_weight_helper.dart';


abstract class AppTheme {
  static TextStyle font24BlackBold = const TextStyle(
      fontSize: 24,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kPrimaryColor
  );

  static TextStyle font20BlackBold = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kBlackColor
  );
}