import 'package:flutter/cupertino.dart';
import 'package:step_01/app/theme/app_colors.dart';

import '../constants/app_text.dart';
import '../theme/app_text_styles.dart';

class Heith extends StatelessWidget {
  const Heith({
    Key? key,
    required this.height,
    required this.onChanged,
  }) : super(key: key);

  final int height;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppText.heigth, style: AppTextStyle.greyTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('$height', style: AppTextStyle.valueStyle),
            const Text(AppText.cm, style: AppTextStyle.greyTextStyle),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              value: height.toDouble(),
              max: 300,
              activeColor: AppColors.white,
              thumbColor: AppColors.buttonColor,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
