import 'package:get/get.dart';

import '../controllers/wearher_controller.dart';

class WearherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WearherController>(
      () => WearherController(),
    );
  }
}
