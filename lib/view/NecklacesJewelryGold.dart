import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../AppColor.dart';
import '../controller/GoldController.dart';

class NecklacesJewelryGold extends StatefulWidget {
  const NecklacesJewelryGold({Key? key}) : super(key: key);

  @override
  State<NecklacesJewelryGold> createState() => _NecklacesJewelryGoldState();
}

class _NecklacesJewelryGoldState extends State<NecklacesJewelryGold> {
  @override
  final GoldController _goldController = Get.find();
  var color = AppColor().color1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xFF810023),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Golden Necklaces",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Obx(() {
        if (_goldController.goldNecklacesList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _goldController.goldNecklacesList.length,
            itemBuilder: (BuildContext context, int index) {
              final imageUrl = _goldController.goldNecklacesList[index]['id'];
              return Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 5, left: 8),
                child: Container(
                    width: 130,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                      borderRadius: const BorderRadiusDirectional.only(
                          topStart: Radius.circular(50),
                          bottomEnd: Radius.circular(50)),
                      border: Border.all(
                          color: AppColor().color4.withOpacity(0.5), width: 4),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("$imageUrl"))),
              );
//   Image.network(
//   imageUrl,
//   fit: BoxFit.cover,
// );
            },
          );
        }
      }),
    );
  }
}
