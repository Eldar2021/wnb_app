import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import '../../../constants/app_text.dart';
import '../../../utils/return_bmi_alert.dart';

class BmiController extends GetxController {
  RxBool isFemale = false.obs;
  RxInt heigth = 180.obs;
  RxInt weigth = 60.obs;
  RxInt age = 28.obs;

  void isFemaleFalse() => isFemale.value = false;
  void isFemaleTrue() => isFemale.value = true;

  void changeHeigth(double value) => heigth.value = value.toInt();

  void changeWeigth(int value) => weigth.value = value;

  void changeAge(int value) => age.value = value;

  void showResult(BuildContext context) {
    final res = weigth / math.pow(heigth / 100, 2);
    if (res <= 18.4) {
      showMyDialog(context, AppText.thin);
    } else if (res >= 18.5 && res <= 24.9) {
      showMyDialog(context, AppText.normal);
    } else if (res >= 25) {
      showMyDialog(context, AppText.fat);
    } else {
      showMyDialog(context, AppText.sorry);
    }
  }
}
