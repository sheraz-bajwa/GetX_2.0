import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ChartFlutter.dart';
import 'package:getx/GetXstatemanagment/AddfavExample4.dart';
import 'package:getx/Home.dart';
import 'package:getx/GetXstatemanagment/Example2.dart';
import 'package:getx/GetXstatemanagment/FirestExample.dart';
import 'package:getx/GetXstatemanagment/ThirdExample.dart';
import 'package:getx/GetXstatemanagment/GetXcontroler.dart';
import 'package:getx/MVVM/Landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BirthdayScreen(),
    );
  }
}
