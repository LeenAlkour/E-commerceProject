import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/view/NewJewelryGold.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'BraceletsJewelryGold.dart';
import 'DetProduct.dart';
import 'EarringsJewelryGold.dart';
import 'RingJewelryGold.dart';
import '../controller/GoldController.dart';

class gold extends StatefulWidget {
  const gold({Key? key}) : super(key: key);

  @override
  State<gold> createState() => _goldState();
}

class _goldState extends State<gold> {
  dynamic time = 0;
  var currentIndex = 0;
  final GoldController _updateFinalPrice = Get.find();
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF810023),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            //0xFF287094
                            //0xFF0B5872
                            width: double.infinity,
                            height: displayHeight * 0.265,

                            decoration: BoxDecoration(
                              color: Color(0xFF810023),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: (){Get.to(RingJewelryGold());},
                                          child: Container(
                                            decoration: BoxDecoration(color: const Color(
                                                0xFFF4F8FC).withOpacity(0.8),
                                                borderRadius: BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                    const  Color(0xFFF5ECEE).withOpacity(0.7),
                                                    blurRadius: 5,
                                                    offset: const Offset(-1, 2),
                                                  ),
                                                ],

                                                border: Border.all(color: const Color(0xFFF5ECEE),)

                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Image(
                                                color: Color(0xFFC27D11),
                                                image: AssetImage('images/ring.png'),
                                                width: 60.0,
                                                height: 60.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: (){Get.to(EarringsJewelryGold());},
                                          child: Container(
                                            decoration: BoxDecoration(color: const Color(
                                                0xFFF4F8FC).withOpacity(0.8),
                                                borderRadius: BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                    const  Color(0xFFF5ECEE).withOpacity(0.7),
                                                    blurRadius: 5,
                                                    offset: const Offset(-1, 2),
                                                  ),
                                                ],

                                                border: Border.all(color: const Color(0xFFF5ECEE),)

                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Image(
                                                color: Color(0xFFC27D11),
                                                image: AssetImage('images/earrings.png'),
                                                width: 60.0,
                                                height: 60.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: (){Get.to(BraceletsJewelryGold());},
                                          child: Container(
                                            decoration: BoxDecoration(color:const Color(
                                                0xFFF4F8FC).withOpacity(0.8),
                                                borderRadius: BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                    const  Color(0xFFF5ECEE).withOpacity(0.7),
                                                    blurRadius: 5,
                                                    offset: const Offset(-1, 2),
                                                  ),
                                                ],

                                                border: Border.all(color: const Color(0xFFF5ECEE),)

                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Image(
                                                color: Color(0xFFC27D11),
                                                image: AssetImage('images/bracelet.png'),
                                                width: 60.0,
                                                height: 60.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: GestureDetector(onTap: (){Get.to(NewJewelryGold());},
                                      child: Container(
                                        decoration: BoxDecoration(color: const Color(
                                            0xFFF4F8FC).withOpacity(0.8),
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color:
                                                const  Color(0xFFF5ECEE).withOpacity(0.7),
                                                blurRadius: 5,
                                                offset: const Offset(-1, 2),
                                              ),
                                            ],

                                            border: Border.all(color: const Color(0xFFF5ECEE),)

                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Image(
                                            color: Color(0xFFC27D11),
                                            image: AssetImage('images/necklace.png'),
                                            width: 60.0,
                                            height: 60.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                       Center(
                                          child: Container(
                                              height: 71,
                                              width: 71,
                                              decoration: BoxDecoration(color: const Color(
                                                  0xFFF4F8FC).withOpacity(0.8),
                                                  borderRadius: BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color:
                                                      const  Color(0xFFF5ECEE).withOpacity(0.7),
                                                      blurRadius: 5,
                                                      offset: const Offset(-1, 2),
                                                    ),
                                                  ],

                                                  border: Border.all(color: const Color(0xFFF5ECEE),)

                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: const Padding(
                                                    padding: EdgeInsets.all(5.0),
                                                    child: Center(
                                                        child: Text(
                                                          "All",
                                                          style: TextStyle(
                                                              color:Color(0xFFC27D11), fontSize: 40),
                                                        ))),)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: double.infinity,
                          height: displayHeight * 0.2,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F8FC),
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   const BoxShadow(
                            //     color:Colors.grey,
                            //     blurRadius: 7,
                            //     offset: Offset(0, 5),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(0.1),
                                      child: Text(" Gold Price",
                                          style: TextStyle(
                                              fontSize: 28,
                                              color: Color(0xFFC27D11))),
                                    ),
                                    SizedBox(
                                      width: displayWidth * 0.18,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.30),
                                          child: Text("Last Change:",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.8))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(0.1),
                                          child: Text("23/2/2023-11:23",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.blueGrey
                                                      .withOpacity(0.8))),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(color: Colors.grey),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0.10),
                                      child: Text("Current Puchase Price /gr",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black
                                                  .withOpacity(0.6))),
                                    ),
                                     Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text("\$ 63.998765",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.blueGrey
                                                    .withOpacity(0.9))),
                                      ),

                                    Padding(
                                      padding: const EdgeInsets.all(0.30),
                                      child: Text("Powered by: name wep",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.blueGrey
                                                  .withOpacity(0.8))),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 12),
                child: Text(" Gold Jewelry",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFFF5ECEE).withOpacity(0.6))),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 5,
                    offset: const Offset(0, -4),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "New Jewelry",
                        style: TextStyle(
                            color:  Color(0xFFC27D11),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 120),
                      Text(
                        "See All",
                        style: TextStyle(
                            color:  Color(0xFFC59B5A),
                            fontSize: 20,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: GestureDetector(
                        onTap: (){Get.to(DetProduct(id: 1,));},
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: 180,
                                height: 220,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                      bottomStart: Radius.circular(50),
                                      topEnd: Radius.circular(50)),
                                  border: Border.all(
                                      color: const Color(0xFFC27D11)
                                          .withOpacity(0.6),
                                      width: 2),
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 180,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.only(
                                          bottomStart: Radius.circular(50),
                                          topEnd: Radius.circular(50)),
                                      border: Border.all(
                                          color: const Color(0xFFC27D11)
                                              .withOpacity(0.6),
                                          width: 2),
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 180,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.only(
                                          bottomStart: Radius.circular(50),
                                          topEnd: Radius.circular(50)),
                                      border: Border.all(
                                          color: const Color(0xFFC27D11)
                                              .withOpacity(0.6),
                                          width: 2),
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.favorite_rounded,
  Icons.settings_rounded,
  Icons.person_rounded,
];

List<String> listOfStrings = [
  'Home',
  'Favorite',
  'Settings',
  'Account',
];
