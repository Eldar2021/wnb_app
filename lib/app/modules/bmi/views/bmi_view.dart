import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/app_text.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';
import '../../../utils/calculate_butoon.dart';
import '../../../utils/heigth.dart';
import '../../../utils/male_female.dart';
import '../../../utils/status_card.dart';
import '../../../utils/weigth_age.dart';
import '../controllers/bmi_controller.dart';

class BmiView extends GetView<BmiController> {
  const BmiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctl = controller;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(AppText.appBarTitle, style: AppTextStyle.titleStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: ctl.isFemaleFalse,
                      child: Obx(() {
                        return MaleFemale(
                          icon: Icons.male,
                          text: AppText.male,
                          isFemale: !ctl.isFemale.value,
                        );
                      }),
                    ),
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: InkWell(
                      onTap: ctl.isFemaleTrue,
                      child: Obx(() {
                        return MaleFemale(
                          icon: Icons.female,
                          text: AppText.female,
                          isFemale: ctl.isFemale.value,
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            StatusCard(
              child: Obx(() {
                return Heith(
                  height: ctl.heigth.value,
                  onChanged: ctl.changeHeigth,
                );
              }),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: Obx(() {
                      return WeigthAge(
                        text: AppText.weigth,
                        value: ctl.weigth.value,
                        add: ctl.changeWeigth,
                        remove: ctl.changeWeigth,
                      );
                    }),
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: Obx(() {
                      return WeigthAge(
                        text: AppText.age,
                        value: ctl.age.value,
                        add: ctl.changeAge,
                        remove: ctl.changeAge,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () => ctl.showResult(context),
      ),
    );
  }
}
