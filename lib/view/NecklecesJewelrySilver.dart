import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:front_jewelry/view/DetProductSilver.dart';
import 'package:front_jewelry/view/silver.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../AppColor.dart';
import '../controller/GoldController.dart';

class NecklacesJewelrySilver extends StatefulWidget {
  const NecklacesJewelrySilver({Key? key}) : super(key: key);

  @override
  State<NecklacesJewelrySilver> createState() => _NecklacesJewelrySilverState();
}

class _NecklacesJewelrySilverState extends State<NecklacesJewelrySilver> {
  void initState() {
    _silverController.getNecklacesSilver();
    // TODO: implement initState
    super.initState();
  }

  final GoldController _silverController = Get.find();
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
                      Get.off(silver());
                    },
                    icon: Icon(Icons.arrow_back)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Silver Necklaces",
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
                unSelectedBorderColor: Color(_silverController.color.value),
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
                    unSelectedColor: Color(_silverController.color.value),
                    textStyle: TextStyle(fontSize: 20)),
                radioButtonValue: (value) {
                  switch (value) {
                    case '0':
                      {
                        _silverController.getNecklacesSilver();
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
                                                  "${_silverController.numCheaper.value}",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                  ),
                                                ))),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                              width: 3,
                                              color: Color(_silverController
                                                  .color.value),
                                            )),
                                            height: 50,
                                            width: 110,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  _silverController
                                                      .increase_num_cheaper();
                                                },
                                                icon: Icon(
                                                  opticalSize: 20.0,
                                                  Icons.arrow_drop_up_sharp,
                                                  size: 40,
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  _silverController
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
                                        _silverController
                                            .getNecklacesSilverCheaperThan(
                                                _silverController
                                                    .numCheaper.value);

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
                                                  "${_silverController.numGreater.value}",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                  ),
                                                ))),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                              width: 3,
                                              color: Color(_silverController
                                                  .color.value),
                                            )),
                                            height: 50,
                                            width: 110,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  _silverController
                                                      .increase_num_greater();
                                                },
                                                icon: Icon(
                                                  opticalSize: 20.0,
                                                  Icons.arrow_drop_up_sharp,
                                                  size: 40,
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  _silverController
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
                                        _silverController
                                            .getNecklacesSilverGreaterThan(
                                                _silverController
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
                        _silverController.getNecklacesSilverByDes();

                        //Sort ByDes;
                      }
                      break;

                    case '4':
                      {
                        _silverController.getNecklacesSilverByAsc();

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
                                          leftPrefix: Icon(
                                            Icons.attach_money,
                                            size: 19,
                                            color: Colors.black45,
                                          ),
                                          rightSuffix: Icon(
                                            Icons.attach_money,
                                            size: 19,
                                            color: Colors.black45,
                                          ),
                                        ),
                                        jump: true,
                                        values: [
                                          _silverController.price1.value,
                                          _silverController.price2.value
                                        ],
                                        rangeSlider: true,
                                        max: 100000.0,
                                        min: 0.0,
                                        onDragging:
                                            (handlerIndex, price1, price2) {
                                          _silverController.price1.value =
                                              price1;
                                          _silverController.price2.value =
                                              price2;
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
                                        _silverController
                                            .getNecklacesSilverBetween(
                                                _silverController.price1.value,
                                                _silverController.price2.value);

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
                selectedColor: Color(_silverController.color.value),
              ),
            ),
          ],
        ),
        leadingWidth: double.infinity,
        toolbarHeight: 115,
        backgroundColor: Color(_silverController.color.value),
      ),
      body: Obx(() {
        if (_silverController.silverNecklacesList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _silverController.silverNecklacesList.length,
            itemBuilder: (BuildContext context, int index) {
              final imageUrl =
                  _silverController.silverNecklacesList[index]['id'];
              return GestureDetector(
                onTap: (){
                  Get.to(DetProductSilver(),arguments: [ _silverController.silverNecklacesList[index]['id']]);
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
                        child: Align(alignment: Alignment.bottomLeft,child: Text("${_silverController.silverNecklacesList[index]['final_price']} \$",style: TextStyle(fontSize: 20),)),
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
