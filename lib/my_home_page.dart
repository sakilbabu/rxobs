import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  final count = 0.obs;
  final count2 = 0.obs;
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
              return Text("hello world $count");
            }),
            Obx(() {
              print("obx2 called");
              return Text("hello World2 $count2");
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.value = count.value + 1;
          // count2.value = count2.value + 1;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
