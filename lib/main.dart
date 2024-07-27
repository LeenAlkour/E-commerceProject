import 'package:flutter/material.dart';
import 'package:front_jewelry/AppBindings.dart';
import 'package:front_jewelry/view/DetProductGold.dart';
import 'package:front_jewelry/controller/GoldController.dart';
import 'package:front_jewelry/view/silver.dart';
import 'package:front_jewelry/view/gold.dart';
import 'package:front_jewelry/view/Home.dart';
import 'package:front_jewelry/view/NewJewelryGold.dart';

import 'package:get/get.dart';
import 'AppColor.dart';
import 'GoldService.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color color = AppColor().color6;


  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'My App',
      home: Home(),
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}
