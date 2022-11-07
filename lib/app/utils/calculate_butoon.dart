import 'package:flutter/material.dart';
import 'package:step_01/app/theme/app_colors.dart';

import '../constants/app_text.dart';
import '../theme/app_text_styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({Key? key, required this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        color: AppColors.buttonColor,
        child: const Center(
          child: Text(AppText.calculate, style: AppTextStyle.titleStyle),
        ),
      ),
    );
  }
}
