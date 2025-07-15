import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'font_weight_helper.dart';


abstract class AppTheme {
  static TextStyle font20PrimaryBold = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kPrimaryColor
  );
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

  static TextStyle font12WhiteBold = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kWhiteColor
  );

  static TextStyle font16BlackBold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kBlackColor
  );

  static TextStyle font12BlackBold = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kBlackColor
  );

  static TextStyle font14BlackBold = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.kBlackColor
  );
}