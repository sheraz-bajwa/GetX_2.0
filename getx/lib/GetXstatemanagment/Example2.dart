import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetXstatemanagment/GetXcontroler.dart';
import 'package:getx/GetxHeigh&Width.dart';

class SecondExample extends StatefulWidget {
  const SecondExample({super.key});

  @override
  State<SecondExample> createState() => _SecondExampleState();
}


class _SecondExampleState extends State<SecondExample> {
  ExampleTwoControler twoControler = Get.put(ExampleTwoControler());

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(
            () => Center(
              child: Container(
                height: Get.height * .4,
                width: Get.width * .4,
                color: Colors.amber.withOpacity(twoControler.opacity.value),
              ),
            ),
          ),
          Obx(() => Slider(
              value: twoControler.opacity.value,
              onChanged: (value) {
                print(twoControler.opacity.value);
                twoControler.opacity.value = value;
              }))
        ],
      ),
    );
  }
}
