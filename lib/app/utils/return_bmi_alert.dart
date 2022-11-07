import 'package:flutter/material.dart';

import '../constants/app_text.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: AppColors.backgroundColor,
      title: const Center(
        child: Text(
          AppText.appBarTitle,
          style: AppTextStyle.resultTextStyle,
        ),
      ),
      content: Text(
        text,
        style: AppTextStyle.resultTextStyle,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppText.backButton),
        ),
      ],
    ),
  );
}
