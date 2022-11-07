import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/api_const.dart';
import '../../../theme/app_text_styles.dart';
import '../../../utils/custom_icon_button.dart';
import '../controllers/wearher_controller.dart';

class WeatherView extends GetView<WearherController> {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctl = controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('WearherView'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/weather.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  icon: Icons.near_me,
                  onPressed: () {},
                ),
                CustomIconButton(
                  icon: Icons.location_city,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                Obx(() {
                  final text =
                      ctl.weather.value != null ? (ctl.weather.value!.main.temp - 274.15).floorToDouble() : '...';
                  return Text('$text', style: AppTextStyle.body1);
                }),
                Obx(() {
                  return ctl.weather.value != null
                      ? Image.network(
                          ApiConst.getIcon(ctl.weather.value!.weather[0].icon, 4),
                          height: 160,
                          fit: BoxFit.fitHeight,
                        )
                      : const SizedBox(
                          height: 160,
                          width: 160,
                          child: CircularProgressIndicator(),
                        );
                }),
              ],
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FittedBox(
                    child: Obx(() {
                      final text = ctl.weather.value != null
                          ? ctl.weather.value!.weather[0].description.replaceAll(' ', '\n')
                          : '...';
                      return Text(
                        text,
                        textAlign: TextAlign.right,
                        style: AppTextStyle.body2((90)),
                      );
                    }),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: FittedBox(
                child: Obx(() {
                  final text = ctl.weather.value != null ? ctl.weather.value!.sys.country : '...';
                  return Text(
                    text,
                    textAlign: TextAlign.right,
                    style: AppTextStyle.body1,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
