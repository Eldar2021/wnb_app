import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bmi_controller.dart';

class BmiView extends GetView<BmiController> {
  const BmiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BmiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BmiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
