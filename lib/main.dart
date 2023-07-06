

import 'package:flutter/cupertino.dart';
import 'package:front_jewelry/view/selvir_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // initialBinding: controller_bindings(),
      home: selvir_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}
