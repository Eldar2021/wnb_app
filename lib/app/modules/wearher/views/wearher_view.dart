import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wearher_controller.dart';

class WearherView extends GetView<WearherController> {
  const WearherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WearherView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WearherView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
