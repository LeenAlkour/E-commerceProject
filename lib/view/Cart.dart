import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/view/DetProductGold.dart';
import 'package:front_jewelry/view/DetProductSilver.dart';
import 'package:front_jewelry/view/Favioret.dart';
import 'package:front_jewelry/view/OrderHistory.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/GoldController.dart';
import 'Home.dart';
import 'Invoice.dart';
import 'Profile.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override

  final GoldController _goldController = Get.find();
  @override
  void initState() {
    // TODO: implement initState
    _goldController.displayCart();
    _goldController.currentIndex.value=2;
    super.initState();
  }

  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    final List<String> items = List<String>.generate(10000, (i) => '$i');
    return Obx(()=>Scaffold(
        floatingActionButton: Padding(
      padding: const EdgeInsets.only(bottom: 10.0,right: 12,left: 29),
      child: Container(
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.3),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding:
          EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                _goldController.currentIndex.value = index;

                if(index==1)
                  Get.offAll(
                      Favioret());
                if(index==3)
                  Get.offAll(
                      Profile());
                if(index==0)
                  Get.offAll(
                      Home());
                HapticFeedback.lightImpact();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Obx(()=>Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == _goldController.currentIndex.value
                        ? displayWidth * .32
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == _goldController.currentIndex.value
                          ? displayWidth * .12
                          : 0,
                      width: index == _goldController.currentIndex.value
                          ? displayWidth * .32
                          : 0,
                      decoration: BoxDecoration(
                        color: index == _goldController.currentIndex.value
                            ? Colors.grey.withOpacity(.1)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == _goldController.currentIndex.value
                        ? displayWidth * .31
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == _goldController.currentIndex.value
                                  ? displayWidth * .13
                                  : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == _goldController.currentIndex.value ? 1 : 0,
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == _goldController.currentIndex.value
                                    ? '${listOfStrings[index]}'
                                    : '',
                                style:  TextStyle(
                                  color: Color(_goldController.color.value),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == _goldController.currentIndex.value
                                  ? displayWidth * .03
                                  : 20,
                            ),
                            Icon(
                              listOfIcons[index],
                              size: displayWidth * .076,
                              color: index == _goldController.currentIndex.value
                                  ? Color(_goldController.color.value)
                                  : Colors.black26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),)
          ),
        ),
      ),
    ),

        appBar: AppBar(toolbarHeight: 75,
          title: Text(
            "Cart",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),centerTitle: true,
          actions: [

            IconButton(onPressed: (){ Get.to(OrderHistory());}, icon: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.work_history_outlined,size: 30,),
            ))
          ],

          backgroundColor: Color(_goldController.color.value),
        ),
        body: Obx(() {
          if (_goldController.displayCartList.isEmpty) {
            return Center(child: Text(" you haven't added any products to the cart yet. ",style: TextStyle(fontSize: 17),));
          } else {
            return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _goldController.displayCartList.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      // Step 1
                        key: UniqueKey(),

                        onDismissed: (direction) {
                          // Step 2
                          setState(() {

                            _goldController.DeleteFromCart(_goldController.token, _goldController.displayCartList[index]['item_id'], _goldController.displayCartList[index]['size']);

                            _goldController.displayCartList.removeAt(index);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(duration: Duration(seconds: 5),content: Text('product has been deleted successfully')));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(

                            children: [
                              Row(

                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      if(_goldController.displayCartList[index]['product_type']==1)
                                        Get.to(DetProductGold(),arguments: [
                                          _goldController.displayCartList[index]['item_id']

                                        ]);
                                      if(_goldController.displayCartList[index]['product_type']==2)
                                        Get.to(DetProductSilver(),arguments: [
                                          _goldController.displayCartList[index]['item_id']

                                        ]);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 80,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFFF4F8FC)
                                                .withOpacity(0.8),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomRight: Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0xFFF5ECEE)
                                                    .withOpacity(0.7),
                                                blurRadius: 5,
                                                offset: const Offset(-1, 2),
                                              ),
                                            ],
                                            border: Border.all(
                                              color:  Color(_goldController.color.value),
                                            )),
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Image(
                                            color: Color(0xFFC27D11),
                                            image: AssetImage('images/ring.png'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${_goldController.displayCartList[index]['price']} \$",style: TextStyle( fontSize:18,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,),),
                                        Text(
                                          "${_goldController.displayCartList[index]['product_type']}",style: TextStyle(overflow: TextOverflow.ellipsis,),),
                                        Text(
                                            "${_goldController.displayCartList[index]['size']}",style: TextStyle(overflow: TextOverflow.ellipsis,color:
                                        Colors.grey)),

                                      ],
                                    ),
                                  ),





                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        ));
                  },
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Get.to(Invoice());


                  },
                  label: Text("View the invoice",
                      style: TextStyle(fontSize: 20, color: Colors.white)),

                  backgroundColor:  Color(_goldController.color.value),
                ),
              ],
            );
          }
        })));
  }
}
