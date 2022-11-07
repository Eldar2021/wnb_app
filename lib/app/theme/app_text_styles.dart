import 'package:flutter/material.dart';
import 'package:step_01/app/theme/app_colors.dart';

class AppTextStyle {
  static const TextStyle newsTitle = TextStyle(
    color: AppColors.black,
    fontSize: 20,
  );
  static const TextStyle newsDetailTitle = TextStyle(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle dateTime = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle detailDescription = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const body1 = TextStyle(
    color: AppColors.white,
    fontSize: 96,
  );

  static TextStyle body2(double size) => TextStyle(
        color: AppColors.white,
        fontSize: size,
        fontWeight: FontWeight.w300,
      );
}
