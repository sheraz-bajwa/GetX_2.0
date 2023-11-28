import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetXstatemanagment/GetXcontroler.dart';
import 'package:getx/GetxHeigh&Width.dart';

class FirstExample extends StatefulWidget {
  const FirstExample({super.key});

  @override
  State<FirstExample> createState() => _FirstExampleState();
}

class _FirstExampleState extends State<FirstExample> {
  final CounterControler controler = Get.put(CounterControler());

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
          child: Center(
            child: Obx(() {
              return Text(
                controler.counter.string,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              );
            }),
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controler.incrementCounter();
      }),
    );
  }
}
