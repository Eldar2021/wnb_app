import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctl = controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          return Text(
            'NewsView is ${ctl.count}, ${ctl.news.value?.articles.length}',
            style: const TextStyle(fontSize: 20),
          );
        }),
      ),
    );
  }
}
