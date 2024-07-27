import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/view/Profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/GoldController.dart';
import 'Cart.dart';
import 'Home.dart';

class Favioret extends StatefulWidget {
  const Favioret({Key? key}) : super(key: key);

  @override
  State<Favioret> createState() => _FavioretState();
}

class _FavioretState extends State<Favioret> {
  @override
  void initState() {
    // TODO: implement initState

    color.currentIndex.value=1;
    super.initState();}

    final GoldController color = Get.put(GoldController());
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                  setState(() {
                    color.currentIndex.value = index;

                    if(index==3)
                      Get.offAll(
                          Profile());
                    if(index==2)
                      Get.offAll(
                          Cart());
                    if(index==0)
                      Get.offAll(
                          Home());
                    HapticFeedback.lightImpact();
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Obx(()=>Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == color.currentIndex.value
                          ? displayWidth * .32
                          : displayWidth * .18,
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: index == color.currentIndex.value
                            ? displayWidth * .12
                            : 0,
                        width: index == color.currentIndex.value
                            ? displayWidth * .32
                            : 0,
                        decoration: BoxDecoration(
                          color: index == color.currentIndex.value
                              ? Colors.grey.withOpacity(.1)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == color.currentIndex.value
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
                                width: index == color.currentIndex.value
                                    ? displayWidth * .13
                                    : 0,
                              ),
                              AnimatedOpacity(
                                opacity: index == color.currentIndex.value ? 1 : 0,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child: Text(
                                  index == color.currentIndex.value
                                      ? '${listOfStrings[index]}'
                                      : '',
                                  style:  TextStyle(
                                    color: Color(color.color.value),
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
                                width: index == color.currentIndex.value
                                    ? displayWidth * .03
                                    : 20,
                              ),
                              Icon(
                                listOfIcons[index],
                                size: displayWidth * .076,
                                color: index == color.currentIndex.value
                                    ? Color(color.color.value)
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
    );
  }
}
