import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxobservable/home_page_controller.dart';
import 'package:rxobservable/my_seccond_page.dart';

class MyHomePage extends StatelessWidget {
  final MyHomePageController controller;
  MyHomePage({Key? key})
      : controller = Get.put(MyHomePageController()),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Observable"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() {
              print("obx1 called");
              return Text("hello world ${controller.count}");
            }),
            Obx(() {
              print("obx2 called");
              return Text("hello World2 ${controller.count}");
            })
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.count.value = controller.count.value + 1;
              // count2.value = count2.value + 1;
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => MySecondPage()));
            },
            child: Icon(Icons.forward),
          ),
        ],
      ),
    );
  }
}
