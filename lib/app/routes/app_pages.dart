// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/bmi/bindings/bmi_binding.dart';
import '../modules/bmi/views/bmi_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/wearher/bindings/wearher_binding.dart';
import '../modules/wearher/views/wearher_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NEWS;
  static const WEARHER = Routes.WEARHER;
  static const BMI = Routes.BMI;

  static final routes = [
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.WEARHER,
      page: () => const WeatherView(),
      binding: WearherBinding(),
    ),
    GetPage(
      name: _Paths.BMI,
      page: () => const BmiView(),
      binding: BmiBinding(),
    ),
  ];
}
