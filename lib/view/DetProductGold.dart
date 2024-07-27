import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:front_jewelry/AppColor.dart';
import 'package:front_jewelry/view/gold.dart';
import 'package:front_jewelry/view/SizerRingPage.dart';
import 'package:get/get.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

import '../controller/GoldController.dart';
import 'SizeRing.dart';

class DetProductGold extends StatefulWidget {
  const DetProductGold({Key? key}) : super(key: key);

  @override
  State<DetProductGold> createState() => _DetProductGoldState();
}

class _DetProductGoldState extends State<DetProductGold> {
  final GoldController controller1 = Get.put(GoldController(),permanent: false);

  @override
  void initState() {

    Get.arguments;
    controller1.DetGoldItem(Get.arguments[0]);


    super.initState();
  }

  var rating = 0;
  Widget buildRating() => RatingBar.builder(
        minRating: 1,
        itemSize: 46,
        itemPadding: EdgeInsets.symmetric(horizontal: 3),
        itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
        updateOnDrag: true,
        onRatingUpdate: (Rating) => setState(() {
         controller1.rate.value = Rating as double;
        }),
      );
  Widget build(BuildContext context) {
    return  Obx(() {
      if (controller1.detGoldItem.isEmpty) {
        return const Center(child: Scaffold(body: CircularProgressIndicator()));
      } else {
        return SafeArea(
          child: Scaffold(
              backgroundColor: Color(controller1.color.value),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 28.0),
                            child: Image(
                              color: Color(0xFF868484),
                              image: AssetImage('images/ring.png'),
                              width: 60.0,
                              height: 60.0,
                            ),
                          ),
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
                            border: Border.all(color: Color(0xFFD38A17), width: 4),
                            borderRadius: const BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(140)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 280,
                              ),
                              child: SpeedDial(
                                renderOverlay: true,
                                overlayColor: Colors.white10,
                                activeForegroundColor:
                                Color(controller1.color.value),
                                activeBackgroundColor: Colors.transparent,
                                closeDialOnPop: true,
                                direction: SpeedDialDirection.down,
                                animatedIcon: AnimatedIcons.menu_close,
                                backgroundColor: Colors.transparent,
                                buttonSize: const Size(70.0, 70.0),
                                foregroundColor: Color(controller1.color.value),
                                elevation: 150,
                                children: [
                                  SpeedDialChild(
                                      onTap: () {
                                        void showRating() => showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Text('Rate This Product'),
                                            content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Pleas leave a star rating',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  SizedBox(height: 32),
                                                  buildRating(),
                                                ]),
                                            actions: [
                                              TextButton(
                                                  child: Text(
                                                    'ok',
                                                    style:
                                                    TextStyle(fontSize: 20),
                                                  ),
                                                  onPressed: () {
                                                    print(controller1.rate.value);
                                                    controller1.goldRate(controller1.rate.value,controller1.detGoldItem['gold']['id'],controller1.token);
                                                    Navigator.pop(context);
                                                  }),
                                            ],
                                          ),
                                        );
                                        showRating();
                                      },
                                      backgroundColor:
                                      Color(controller1.color.value),
                                      child: const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                      label: "Rate this Product"),
                                  SpeedDialChild(
                                      onTap: () {},
                                      backgroundColor:
                                      Color(controller1.color.value),
                                      child: const Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.white,
                                      ),
                                      label: "Add this Product to Favorite"),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(right: 15.0, ),
                              child: Obx(
                                    () => Text(
                                    "\$${controller1.detGoldItem['gold']['final_price'].toString()}",
                                    style: TextStyle(
                                        fontSize: 40, color: Color(0xFFAD6F0D))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 8),
                        child: Row(
                          children: [
                            Text("Description",
                                style:
                                TextStyle(fontSize: 40, color: Colors.white)),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 35.0, right: 10.0),
                              child: RatingBarIndicator(
                                rating: 2,
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
                        child: Obx(
                              () => Text(
                              "\$${controller1.detGoldItem['gold']['description'].toString()}",
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 25,overflow: TextOverflow.ellipsis,
                                  color: const Color(0xFFF5ECEE).withOpacity(0.6))),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 14.0,top:15
                            ),
                            child: Row(
                              children: [
                                Text("Weight",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white)),

                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 8),
                        child: Obx(
                              () => Text(
                              "${controller1.detGoldItem['gold']['weight'].toString()} gr",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: const Color(0xFFF5ECEE).withOpacity(0.6))),
                        ),
                      ),


                    ],
                  ),
                ],
              ),
              floatingActionButton: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () {
                      Get.bottomSheet(barrierColor:Color(0x3A020202) ,
                          Container(height: 300,width: double.infinity,color: Colors.white,child:Column(children: [

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Quantity",
                                  style: TextStyle(fontSize: 30, color: Color(controller1.color.value))),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 50.0, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        controller1.decrease_quantity_Item();
                                      },
                                      icon: Icon(
                                        color: Color(controller1.color.value),
                                        opticalSize: 20.0,
                                        Icons.remove,
                                        size: 30,
                                      )),
                                  Center(
                                    child: Container(
                                      child: Obx(() => Center(
                                          child: Text(
                                            "${controller1.quantity_Item.value}",
                                            style: TextStyle(
                                              fontSize: 25,
                                            ),
                                          ))),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color:
                                            Color(controller1.color.value),
                                          )),
                                      height: 40,
                                      width: 110,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        controller1.increase_quantity_Item();
                                      },
                                      icon: Icon(
                                          color: Color(controller1.color.value),
                                          Icons.add,
                                          size: 30)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        if(controller1.detGoldItem['gold']['jewelry-categories-id']==1)
                          Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Size",
                                          style:
                                          TextStyle(fontSize: 30, color: Color(controller1.color.value))),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(SizeRing());
                                        },
                                        child: Text("Don't know your size?",

                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color(controller1.color.value).withOpacity(0.5),
                                                decoration: TextDecoration.underline)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomRadioButton(
                                      unSelectedBorderColor: Color(0xFF810023),

                                      radius: 30,
                                      elevation: 10,
                                      height: 50,
                                      width: 80,
                                      selectedBorderColor: Colors.white,
                                      unSelectedColor: Theme.of(context).canvasColor,
                                      buttonLables: ['3', '3.5', '4', '4.5','5','5.5','6','6.5','7','7.5','8','8.5','9'],
                                      //size b=>
                                      buttonValues: [3.0, 3.5, 4.0, 4.5,5.0,5.5,6.0,6.5,7.0,7.5,8.0,8.5,9.0],
                                      buttonTextStyle: ButtonTextStyle(

                                          selectedColor: Colors.white,
                                          unSelectedColor: Color(0xFF810023),
                                          textStyle: TextStyle(fontSize: 20)),
                                      radioButtonValue: (value) {
                                        controller1.size.value=value;
                                        print( controller1.size.value);
                                      },
                                      selectedColor: Color(0xFFD38A17),
                                    ),
                                  ),
                                ],
                              )),

                        if(controller1.detGoldItem['gold']['jewelry-categories-id']==2)
                          Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Size",
                                          style:
                                          TextStyle(fontSize: 30, color: Color(controller1.color.value))),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(SizeRing());
                                        },
                                        child: Text("Don't know your size?",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color(controller1.color.value).withOpacity(0.5),
                                                decoration: TextDecoration.underline)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomRadioButton(
                                      unSelectedBorderColor: Color(controller1.color.value),
                                      disabledColor: Colors.red,

                                      radius: 30,
                                      elevation: 10,
                                      height: 50,
                                      width: 80,
                                      selectedBorderColor: Colors.white,
                                      unSelectedColor: Theme.of(context).canvasColor,
                                      buttonLables: ['12', '13', '14', '15','16','17','18','19','20','21','22'],
                                      buttonValues: [12.0, 13.0, 14.0, 15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0],
                                      buttonTextStyle: ButtonTextStyle(
                                          disabledColor: Colors.red,
                                          selectedColor: Colors.white,
                                          unSelectedColor: Colors.black87,
                                          textStyle: TextStyle(fontSize: 20)),
                                      radioButtonValue: (value) {
                                        controller1.size.value=value;
                                        print( controller1.size.value);
                                      },
                                      selectedColor: Color(0xFFD38A17),
                                    ),
                                  ),

                                ],
                              )),
//خاتم3لل9ونضاص
//12لل22
                        //17 لل22
                        if(controller1.detGoldItem['gold']['jewelry-categories-id']==3||
                            controller1.detGoldItem['gold']['jewelry-categories-id']==4)Text(""),
                        GestureDetector(
                          child: Container(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
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
                            if (controller1.detGoldItem['gold']['jewelry-categories-id']==3||
                              controller1.detGoldItem['gold']['jewelry-categories-id']==4)
                          {
                            controller1.size.value =0.0;
                          }
                            if((controller1.detGoldItem['gold']['jewelry-categories-id']==1||
                                controller1.detGoldItem['gold']['jewelry-categories-id']==2)&&controller1.size.value==0.0){
                              Get.snackbar("error",
                                  " please choose size",duration: Duration(seconds: 5));

                            }if((controller1.detGoldItem['gold']['jewelry-categories-id']==1||
                                controller1.detGoldItem['gold']['jewelry-categories-id']==2)&&controller1.size.value!=0.0)
                           { Get.defaultDialog(
                               onConfirm: (){




                                 controller1.AddToCart(controller1.token, controller1.detGoldItem['gold']['product_id'],
                                     controller1.size.value, controller1.quantity.value).then((value) => Navigator.pop(context));
                                 print('${controller1.size.value}');

                               },
                               textConfirm: "Yes",
                               textCancel: "No",
                               middleText: "Are you sure to add this product?",
                               title: "Confirmation",
                               titleStyle: TextStyle(fontSize: 25),
                               confirmTextColor: Colors.white,
                               buttonColor: Color(controller1.color.value),
                               middleTextStyle: TextStyle(fontSize: 20),
                               cancelTextColor: Color(controller1.color.value));}
                      if (controller1.detGoldItem['gold']['jewelry-categories-id']==3||
                      controller1.detGoldItem['gold']['jewelry-categories-id']==4 )
                      {controller1.size.value==0.0;
                      controller1.AddToCart(controller1.token, controller1.detGoldItem['gold']['product_id'],
                      controller1.size.value, controller1.quantity.value).then((value) => Navigator.pop(context));
                      print('${controller1.size.value}');
                      }



                          },
                        ),

                      ],),));

                    },
                    label: Text("Add To Cart",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 40,
                    ),
                    backgroundColor: Color(0xFFD38A17),
                  ),
                ],
              )),
        );
      }
    });




  }
}
