import 'package:flutter/material.dart';
import 'package:front_jewelry/AppColor.dart';
import 'package:front_jewelry/controller/GoldController.dart';
import 'package:front_jewelry/view/DetProductGold.dart';
import 'package:get/get.dart';

class NewJewelryGold extends StatefulWidget {
  const NewJewelryGold({Key? key}) : super(key: key);

  @override
  State<NewJewelryGold> createState() => _NewJewelryGoldState();
}

class _NewJewelryGoldState extends State<NewJewelryGold> {
  void initState() {
    _goldController.getNewGold();
    // TODO: implement initState
    super.initState();
  }

  final GoldController _goldController = Get.find();
  var color = AppColor().color1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor:Color(_goldController.color.value),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "New Golden Jewelry  ",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Obx(() {
        if (_goldController.goldNewList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _goldController.goldNewList.length,
            itemBuilder: (BuildContext context, int index) {
              final imageUrl = _goldController.goldNewList[index]['id'];
              return GestureDetector(onTap: (){
                Get.to(DetProductGold(),arguments: [_goldController.goldNewList[index]['id']]);
              },
                child: Padding(
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(alignment: Alignment.bottomLeft,child: Text("${_goldController.goldNewList[index]['final_price']} \$",style: TextStyle(fontSize: 20),)),
                      ),),
                ),
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
