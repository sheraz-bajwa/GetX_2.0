import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetXstatemanagment/GetXcontroler.dart';
import 'package:getx/GetxHeigh&Width.dart';

class ThirdExample extends StatefulWidget {
  const ThirdExample({super.key});

  @override
  State<ThirdExample> createState() => _ThirdExampleState();
}

ThirdExampleSwithButton thirdExampleSwithButton =
    Get.put(ThirdExampleSwithButton());

class _ThirdExampleState extends State<ThirdExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(() {
            return Switch(
                value: thirdExampleSwithButton.notification.value,
                onChanged: (value) {
                  print(thirdExampleSwithButton.notification.value);
                  thirdExampleSwithButton.notification.value = value;
                });
          })
        ],
      ),
    );
  }
}
