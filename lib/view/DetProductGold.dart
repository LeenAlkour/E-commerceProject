import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:front_jewelry/AppColor.dart';
import 'package:front_jewelry/view/gold.dart';
import 'package:front_jewelry/view/SizerRingPage.dart';
import 'package:get/get.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

import '../controller/GoldController.dart';

class DetProduct extends StatefulWidget {
  const DetProduct({Key? key}) : super(key: key);

  @override
  State<DetProduct> createState() => _DetProductState();

}

class _DetProductState extends State<DetProduct> {
  final GoldController controller1 = Get.put(GoldController());

  @override
  void initState() {
    controller1.displayGoldItem(Get.arguments);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF810023),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
    //                     child: Image(
    //               color: Color(0xFF868484),
    //   image: AssetImage('images/l.png'),
    //   width: 60.0,
    //   height: 60.0,
    // ),
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0xFF5B3C3C),
                              blurRadius: 20,
                              offset: Offset(0, 1),
                            ),
                          ],
                          border:
                              Border.all(color: Color(0xFFD38A17), width: 4),
                          borderRadius: const BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(140)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, bottom: 10),
                        child: const Text("\$ 200",
                            style: TextStyle(
                                fontSize: 40, color: Color(0xFFC27D11))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 8),
                  child: Row(
                    children: [
                      Text("Description",
                          style: TextStyle(fontSize: 40, color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, right: 10.0),
                        child: RatingBarIndicator(
                          rating: 3,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Color(0xFFC27D11),
                          ),
                          unratedColor:
                              const Color(0xFFF5ECEE).withOpacity(0.6),
                          itemCount: 5,
                          itemSize: 26.0,
                          direction: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 6),
                  child: Text(
                      "scription this is the ring clacic lol it is soo gold soo buti i lki jthr ",
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 25,
                          color: const Color(0xFFF5ECEE).withOpacity(0.6))),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 8),
                      child: Text("Weight",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 8),
                  child: Text("23 gram",
                      style: TextStyle(
                          fontSize: 25,
                          color: const Color(0xFFF5ECEE).withOpacity(0.6))),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: Row(
                      children: [
                        Text("Size",
                            style:
                                TextStyle(fontSize: 30, color: Colors.white)),
                        SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(SizerRingPage());
                          },
                          child: Text("Do not know your size?",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white54,
                                  decoration: TextDecoration.underline)),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomRadioButton(
                    unSelectedBorderColor: Color(0xFF810023),
                    disabledColor: Colors.red,
                    radius: 30,
                    elevation: 10,
                    height: 50,
                    width: 80,
                    selectedBorderColor: Colors.white,
                    unSelectedColor: Theme.of(context).canvasColor,
                    buttonLables: ['4', '4.5', '5', '5.5'],
                    buttonValues: ['4', '4.5', '5', '5.5'],
                    buttonTextStyle: ButtonTextStyle(
                        disabledColor: Colors.red,
                        selectedColor: Colors.white,
                        unSelectedColor: Color(0xFF810023),
                        textStyle: TextStyle(fontSize: 20)),
                    radioButtonValue: (value) {
                      print(value);
                    },
                    selectedColor: Color(0xFFD38A17),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.defaultDialog(
                textConfirm: "Yes",
                textCancel: "No",
                middleText: "Are you sure to add this product?",
                title: "Confirmation",
                 titleStyle: TextStyle(fontSize: 25),

                confirmTextColor: Colors.white,
                buttonColor: Color(0xFF810023),
                 middleTextStyle: TextStyle(fontSize: 20),
                cancelTextColor: Color(0xFF810023));
          },
          label: Text("Add To Cart",
              style: TextStyle(fontSize: 20, color: Colors.white)),
          icon: const Icon(
            Icons.shopping_bag_outlined,
            size: 30,
          ),
          backgroundColor: Color(0xFFD38A17),
        ));
  }
}
