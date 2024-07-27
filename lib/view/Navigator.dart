import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/GoldController.dart';
import 'Cart.dart';
import 'Home.dart';
import 'Profile.dart';

class Navigator extends StatefulWidget {
  const Navigator({Key? key}) : super(key: key);

  @override
  State<Navigator> createState() => _NavigatorState();
}

 GoldController controller = Get.find();
class _NavigatorState extends State<Navigator> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar:  Align(alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0,right: 12,left: 12),
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
                    controller.currentIndex.value = index;
                    if(index==2)
                      Get.to(
                          Cart());
                    if(index==3)
                      Get.to(
                          Profile());
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
                      width: index == controller.currentIndex.value
                          ? displayWidth * .32
                          : displayWidth * .18,
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: index == controller.currentIndex.value
                            ? displayWidth * .12
                            : 0,
                        width: index == controller.currentIndex.value
                            ? displayWidth * .32
                            : 0,
                        decoration: BoxDecoration(
                          color: index == controller.currentIndex.value
                              ? Colors.grey.withOpacity(.1)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == controller.currentIndex.value
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
                                width: index == controller.currentIndex.value
                                    ? displayWidth * .13
                                    : 0,
                              ),
                              AnimatedOpacity(
                                opacity: index == controller.currentIndex.value ? 1 : 0,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child: Text(
                                  index == controller.currentIndex.value
                                      ? '${listOfStrings[index]}'
                                      : '',
                                  style:  TextStyle(
                                    color: Color(controller.color.value),
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
                                width: index == controller.currentIndex.value
                                    ? displayWidth * .03
                                    : 20,
                              ),
                              Icon(
                                listOfIcons[index],
                                size: displayWidth * .076,
                                color: index == controller.currentIndex.value
                                    ? Color(controller.color.value)
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
    ),);
  }
}
Set<dynamic> navigatorTo={
  Home(),
  Profile(),
  Cart(),

};