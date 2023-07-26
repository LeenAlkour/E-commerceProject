import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/view/DetProduct.dart';
import 'package:front_jewelry/view/silver.dart';
import 'package:front_jewelry/view/gold.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../controller/GoldController.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GoldController _goldController7 = Get.find();
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {


    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 100,
                height: 800,
                decoration: BoxDecoration(
                    color: Color(0xFF810023),

                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff817d80).withOpacity(0.7),
                        blurRadius: 8,
                        offset: const Offset(-1, 2),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFFF5ECEE),
                    )),

              ),
            ),


            Column(mainAxisSize: MainAxisSize.max ,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:35.0,right: 10.0,),
                        child: AvatarGlow(
                          glowColor: Color(0x62d28991),
                          endRadius: 60.0,

                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 600),
                          child: Material(
                            // Replace this child with your own
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.white38,
                              child: const Icon(
                                Icons.person,
                                size: 60,
                                color: Color(0xFF810023),
                              ),
                              radius: 50.0,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Leen",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                          Obx(() {
                            if (_goldController7.message.isEmpty) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else {
                              return Text(
                                "${_goldController7.message.value}",
                                style: TextStyle(
                                    fontSize: 25,
                                    height: 1.5,
                                    fontWeight: FontWeight.w300),
                                textAlign: TextAlign.right,
                              );

                          }
                          }
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: GestureDetector(
                    onTap: (){Get.to(gold());},
                    child: Container(
                      child:Center(
                        child: Text(
                          "Glod",
                          style: TextStyle(color: Color(0xFF810023),
                              fontSize: 45,letterSpacing: 1,
                              height: 1.5,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(90),
                              bottomStart: Radius.circular(90)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff817d80).withOpacity(0.7),
                              blurRadius: 8,
                              offset: const Offset(-1, 2),
                            ),
                          ],
                          border: Border.all(width: 3,
                            color: Color(0xFF810023),
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: GestureDetector(
                    onTap: (){Get.to(silver());},
                    child: Container(
                      child:Center(
                        child: Text(
                          "Silver",
                          style: TextStyle(color: Color(0xFF810023),
                              fontSize: 45,letterSpacing: 1,
                              height: 1.5,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(90),
                              bottomStart: Radius.circular(90)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff817d80).withOpacity(0.7),
                              blurRadius: 8,
                              offset: const Offset(-1, 2),
                            ),
                          ],
                          border: Border.all(width: 3,
                            color: Color(0xFF810023),
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: GestureDetector(
                    child: Container(
                      child:Center(
                        child: Text(
                          "Flower",
                          style: TextStyle(color: Color(0xFF810023),
                              fontSize: 45,letterSpacing: 1,
                              height: 1.5,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(90),
                              bottomStart: Radius.circular(90)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff817d80).withOpacity(0.7),
                              blurRadius: 8,
                              offset: const Offset(-1, 2),
                            ),
                          ],
                          border: Border.all(width: 3,
                            color: Color(0xFF810023),
                          )),
                    ),
                  ),
                ),


                      ],
            ),
            Align(alignment: Alignment.bottomCenter,
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
                          currentIndex = index;
                          HapticFeedback.lightImpact();
                        });
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Stack(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex
                                ? displayWidth * .32
                                : displayWidth * .18,
                            alignment: Alignment.center,
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              height: index == currentIndex
                                  ? displayWidth * .12
                                  : 0,
                              width: index == currentIndex
                                  ? displayWidth * .32
                                  : 0,
                              decoration: BoxDecoration(
                                color: index == currentIndex
                                    ? Colors.grey.withOpacity(.1)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex
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
                                      width: index == currentIndex
                                          ? displayWidth * .13
                                          : 0,
                                    ),
                                    AnimatedOpacity(
                                      opacity: index == currentIndex ? 1 : 0,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child: Text(
                                        index == currentIndex
                                            ? '${listOfStrings[index]}'
                                            : '',
                                        style: const TextStyle(
                                          color: Color(0xFF810023),
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
                                      width: index == currentIndex
                                          ? displayWidth * .03
                                          : 20,
                                    ),
                                    Icon(
                                      listOfIcons[index],
                                      size: displayWidth * .076,
                                      color: index == currentIndex
                                          ? Color(0xFF810023)
                                          : Colors.black26,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.favorite_rounded,
  Icons.shopping_bag_outlined,
  Icons.person_rounded,
];

List<String> listOfStrings = [
  'Home',
  'Favorite',
  'cart',
  'Account',
];
