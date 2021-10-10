import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxobservable/home_page_controller.dart';

class MySecondPage extends StatelessWidget {
  MySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyHomePageController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text("${controller.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<MyHomePageController>().count.value--;
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
