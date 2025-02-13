import 'dart:ffi';

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:front_jewelry/view/gold.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../AppColor.dart';
import '../controller/GoldController.dart';
import 'DetProductGold.dart';

class RingJewelryGold extends StatefulWidget {
  const RingJewelryGold({Key? key}) : super(key: key);

  @override
  State<RingJewelryGold> createState() => _RingJewelryGoldState();
}

class _RingJewelryGoldState extends State<RingJewelryGold> {
  @override
  void initState() {
    _goldController.getRingsGold();
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
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.off(gold());
                    },
                    icon: Icon(Icons.arrow_back)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Golden Rings",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 4),
              child: CustomRadioButton(
                unSelectedBorderColor: Color(_goldController.color.value),
                radius: 30,
                elevation: 10,
                autoWidth: true,
                defaultSelected: '0',
                selectedBorderColor: Colors.white,
                enableShape: true,
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [
                  'All Product',
                  'CheaperThan',
                  'GreaterThan',
                  'Sort ByDes',
                  'Sort ByAsc',
                  'Between'
                ],
                buttonValues: ['0', '1', '2', '3', '4', '5'],
                buttonTextStyle: ButtonTextStyle(
                    selectedColor: Colors.white,
                    unSelectedColor: Color(_goldController.color.value),
                    textStyle: TextStyle(fontSize: 20)),
                radioButtonValue: (value) {
                  switch (value) {
                    case '0':
                      {
                        _goldController.getRingsGold();
                        // All Product;
                      }
                      break;

                    case '1':
                      {
                        Get.bottomSheet(
                            barrierColor: Colors.transparent,
                            Center(
                              child: Container(
                                height: 300,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Center(
                                        child: Text(
                                          "Choose the price you want the lowest priced products from.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Obx(() => Center(
                                                    child: Text(
                                                  "${_goldController.numCheaper.value}",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                  ),
                                                ))),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                              width: 3,
                                              color: Color(_goldController.color.value),
                                            )),
                                            height: 50,
                                            width: 110,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  _goldController
                                                      .increase_num_cheaper();
                                                },
                                                icon: Icon(
                                                  opticalSize: 20.0,
                                                  Icons.arrow_drop_up_sharp,
                                                  size: 40,
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  _goldController
                                                      .decrease_num_cheaper();
                                                },
                                                icon: Icon(
                                                    Icons.arrow_drop_down_sharp,
                                                    size: 40)),
                                          ],
                                        )
                                      ],
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Text(
                                              'Ok',
                                              style: TextStyle(
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        _goldController
                                            .getRingsGoldCheaperThan(_goldController.numCheaper);
                                        // _goldController
                                        //     .getRingsGoldCheaperThan(
                                        //         _goldController
                                        //             .num_cheaper.value);

                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ));
                        // CheaperThan;
                      }
                      break;
                    case '2':
                      {
                        Get.bottomSheet(
                            barrierColor: Colors.transparent,
                            Center(
                              child: Container(
                                height: 300,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Center(
                                        child: Text(
                                          "Choose the price from which you want the prices of the largest products.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Container(
                                            child: Obx(() => Center(
                                                    child: Text(
                                                  "${_goldController.numGreater.value}",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                  ),
                                                ))),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                              width: 3,
                                              color: Color(_goldController.color.value),
                                            )),
                                            height: 50,
                                            width: 110,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  _goldController
                                                      .increase_num_greater();
                                                },
                                                icon: Icon(
                                                  opticalSize: 20.0,
                                                  Icons.arrow_drop_up_sharp,
                                                  size: 40,
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  _goldController
                                                      .decrease_num_greater();
                                                },
                                                icon: Icon(
                                                    Icons.arrow_drop_down_sharp,
                                                    size: 40)),
                                          ],
                                        )
                                      ],
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Text(
                                              'Ok',
                                              style: TextStyle(
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        _goldController
                                            .getRingsGoldGreaterThan(
                                                _goldController
                                                    .numGreater.value);

                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ));
                        //GreaterThan
                      }
                      break;

                    case '3':
                      {
                        _goldController.getRingsGoldByDes();

                        //Sort ByDes;
                      }
                      break;

                    case '4':
                      {
                        _goldController.getRingsGoldByAsc();

                        //Sort ByAsc;
                      }
                      break;
                    case '5':
                      {
                        Get.bottomSheet(
                            barrierColor: Colors.transparent,
                            Center(
                              child: Container(
                                height: 300,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 20.0),
                                      child: Center(
                                        child: Text(
                                          "Select two prices to display products with a price between these two prices.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Obx(
                                          () => FlutterSlider(
                                            tooltip: FlutterSliderTooltip(
                                              leftPrefix: Icon(Icons.attach_money, size: 19, color: Colors.black45,),
                                              rightSuffix: Icon(Icons.attach_money, size: 19, color: Colors.black45,),
                                            ),

                                            jump: true,
                                        values: [_goldController.price1.value, _goldController.price2.value],
                                        rangeSlider: true,
                                        max: 100000.00,

                                        min: 0.00,
                                        onDragging: (handlerIndex, price1, price2) {
                                          _goldController.price1.value = price1;
                                          _goldController.price2.value = price2;
                                        },
                                      ),
                                    ),

                                GestureDetector(
                                      child: Container(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Text(
                                              'Ok',
                                              style: TextStyle(
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        _goldController.getRingsGoldBetween(_goldController.price1.value,_goldController.price2.value);

                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ));
//Between;
                      }
                      break;

                    default:
                      {
                        //statements;
                      }
                      break;
                  }

                  print(value);
                },
                selectedColor: Color(_goldController.color.value),
              ),
            ),
          ],
        ),
        leadingWidth: double.infinity,
        toolbarHeight: 115,
        backgroundColor: Color(_goldController.color.value),
      ),
      body: Obx(() {
        if (_goldController.goldRingsList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _goldController.goldRingsList.length,
            itemBuilder: (BuildContext context, int index) {
              final imageUrl = _goldController.goldRingsList[index]['id'];
              return GestureDetector(
                onTap: (){
                  Get.to(DetProductGold(),arguments: [_goldController.goldRingsList[index]['id']]);
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
                      child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(alignment: Alignment.bottomLeft,child: Text("${_goldController.goldRingsList[index]['final_price']} \$",style: TextStyle(fontSize: 20),)),
              ),)
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
