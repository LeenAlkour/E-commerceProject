import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/AppColor.dart';
import 'package:front_jewelry/view/DetProductGold.dart';
import 'package:front_jewelry/view/OrderHistory.dart';
import 'package:front_jewelry/view/silver.dart';
import 'package:front_jewelry/view/gold.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../controller/GoldController.dart';
import 'Cart.dart';
import 'DetProductSilver.dart';
import 'Favioret.dart';
import 'Invoice.dart';
import 'Profile.dart';
import 'GoldLineChart.dart';
import 'SizeRing.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {

    colorAppC.getHelloName();
    colorAppC.currentIndex.value=0;

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
final GoldController colorAppC = Get.put(GoldController());


    return Scaffold(

      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Obx(()=>Container(
                width: 100,
                height: 800,
                decoration: BoxDecoration(
                    color: Color(colorAppC.color.value),

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

              ),),
            ),


          Obx(()=>  Column(mainAxisSize: MainAxisSize.max ,
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
                            child: Obx(() {
                              if (colorAppC.helloName.isEmpty||colorAppC.helloName[1]==null) {
                                return  Center(child: Icon(
                                  Icons.person,
                                  size: 60,
                                   color: Color(colorAppC.color.value),
                                ),);
                              } else {
                                return Image(image:AssetImage('images/ring.png'),) ;
                              }
                            }),
                           
                            radius: 50.0,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column( mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Obx(() {
      if (colorAppC.helloName.isEmpty) {
      return const Center(child: Text(
        "Hello",
        style: TextStyle(color: Colors.black54,
            fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.right,
      ));
      } else {
      return Text(
        "Hello ${colorAppC.helloName[0]}",
        style: TextStyle(color: Colors.black54,
            fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.right,
      );
      }
      }
                          ,),
                            Text(
                              "good Luck!",
                              style: TextStyle(color: Colors.grey,
                                  fontSize: 22, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),

                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: GestureDetector(
                  onTap: (){
                    colorAppC.getNewGold();
                    Get.to(gold(),);
                  },
                  child: Container(
                    child:Center(
                      child: Text(
                        "Gold",
                        style: TextStyle(color: Color(colorAppC.color.value),
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
                          color: Color(colorAppC.color.value),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: GestureDetector(
                  onTap: (){colorAppC.getNewSilver();
                  Get.to(silver());},
                  child: Container(
                    child:Center(
                      child: Text(
                        "Silver",
                        style: TextStyle(color: Color(colorAppC.color.value),
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
                          color: Color(colorAppC.color.value),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: GestureDetector( onTap: (){
                  Get.to(SizeRing());



                },
                  child: Container(
                    child:Center(
                      child: Text(
                        "Flower",
                        style: TextStyle(color: Color(colorAppC.color.value),
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
                          color: Color(colorAppC.color.value),
                        )),
                  ),
                ),
              ),


            ],
          ),),
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
                        colorAppC.currentIndex.value = index;
                        if(index==2)
                          Get.to(
                              Cart());
                        if(index==1)
                          Get.offAll(
                              Favioret());

                        if(index==3)
                          Get.to(
                              Profile());
                        HapticFeedback.lightImpact();
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Obx(()=>Stack(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == colorAppC.currentIndex.value
                                ? displayWidth * .32
                                : displayWidth * .18,
                            alignment: Alignment.center,
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              height: index == colorAppC.currentIndex.value
                                  ? displayWidth * .12
                                  : 0,
                              width: index == colorAppC.currentIndex.value
                                  ? displayWidth * .32
                                  : 0,
                              decoration: BoxDecoration(
                                color: index == colorAppC.currentIndex.value
                                    ? Colors.grey.withOpacity(.1)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == colorAppC.currentIndex.value
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
                                      width: index == colorAppC.currentIndex.value
                                          ? displayWidth * .13
                                          : 0,
                                    ),
                                    AnimatedOpacity(
                                      opacity: index == colorAppC.currentIndex.value ? 1 : 0,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      child: Text(
                                        index == colorAppC.currentIndex.value
                                            ? '${listOfStrings[index]}'
                                            : '',
                                        style:  TextStyle(
                                          color: Color(colorAppC.color.value),
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
                                      width: index == colorAppC.currentIndex.value
                                          ? displayWidth * .03
                                          : 20,
                                    ),
                                    Icon(
                                      listOfIcons[index],
                                      size: displayWidth * .076,
                                      color: index == colorAppC.currentIndex.value
                                          ? Color(colorAppC.color.value)
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
