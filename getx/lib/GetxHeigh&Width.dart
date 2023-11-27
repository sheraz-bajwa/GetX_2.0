import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxHeigh&Width.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Center(
          child: TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Go BAck')),
        ),
        Container(
          color: Colors.amber,
          height: Get.height * .4,
          width: Get.width * .3,
        )
      ]),
    );
  }
}
