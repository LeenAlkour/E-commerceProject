import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/view/BraceletsJewelryGold.dart';
import 'package:front_jewelry/view/NecklecesJewelrySilver.dart';
import 'package:front_jewelry/view/NewJewelryGold.dart';
import 'package:front_jewelry/view/NewJewelrySilver.dart';
import 'package:front_jewelry/view/SilverAll.dart';
import 'package:get/get.dart';

import '../AppColor.dart';
import 'BraceletsJewelrySilver.dart';
import 'DetProductGold.dart';
import 'DetProductSilver.dart';
import 'EarringsJewelryGold.dart';

import 'EarringsJewelrySilver.dart';
import 'RingJewelryGold.dart';
import '../controller/GoldController.dart';
import 'RingJewelrySilver.dart';

class silver extends StatefulWidget {
  const silver({Key? key}) : super(key: key);

  @override
  State<silver> createState() => _silverState();
}

class _silverState extends State<silver> {
  final GoldController controllerSilver = Get.find();
  @override
  void initState() {
    controllerSilver.getNewSilver();
    // TODO: implement initState
    super.initState();
  }

  dynamic time = 0;
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:  Color(controllerSilver.color.value),
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

                            decoration:  BoxDecoration(
                              color: Color(controllerSilver.color.value),
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
                                          onTap: () {
                                            Get.to(RingJewelrySilver());
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFF4F8FC)
                                                    .withOpacity(0.8),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0xFFF5ECEE)
                                                            .withOpacity(0.7),
                                                    blurRadius: 5,
                                                    offset: const Offset(-1, 2),
                                                  ),
                                                ],
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFFF5ECEE),
                                                )),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Image(
                                                color: Color(0xFF868484),
                                                image: AssetImage(
                                                    'images/ring.png'),
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
                                          onTap: () {
                                            controllerSilver.getNewSilver();
                                            Get.to(EarringsJewelrySilver());
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFF4F8FC)
                                                    .withOpacity(0.8),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0xFFF5ECEE)
                                                            .withOpacity(0.7),
                                                    blurRadius: 5,
                                                    offset: const Offset(-1, 2),
                                                  ),
                                                ],
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFFF5ECEE),
                                                )),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Image(
                                                color: Color(0xFF868484),
                                                image: AssetImage(
                                                    'images/earrings.png'),
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
                                          onTap: () {
                                            Get.to(
                                                const BraceletsJewelrySilver());
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFF4F8FC)
                                                    .withOpacity(0.8),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0xFFF5ECEE)
                                                            .withOpacity(0.7),
                                                    blurRadius: 5,
                                                    offset: const Offset(-1, 2),
                                                  ),
                                                ],
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFFF5ECEE),
                                                )),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Image(
                                                color: Color(0xFF868484),
                                                image: AssetImage(
                                                    'images/bracelet.png'),
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
                                          onTap: () {
                                            Get.to(
                                                const NecklacesJewelrySilver());
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFF4F8FC)
                                                    .withOpacity(0.8),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0xFFF5ECEE)
                                                            .withOpacity(0.7),
                                                    blurRadius: 5,
                                                    offset: const Offset(-1, 2),
                                                  ),
                                                ],
                                                border: Border.all(
                                                  color:
                                                      const Color(0xFFF5ECEE),
                                                )),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Image(
                                                color: Color(0xFF868484),
                                                image: AssetImage(
                                                    'images/necklace.png'),
                                                width: 60.0,
                                                height: 60.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(const SilverAll());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: 71,
                                              width: 71,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xFFF4F8FC)
                                                      .withOpacity(0.8),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                              0xFFF5ECEE)
                                                          .withOpacity(0.7),
                                                      blurRadius: 5,
                                                      offset:
                                                          const Offset(-1, 2),
                                                    ),
                                                  ],
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFFF5ECEE),
                                                  )),
                                              child: const Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(5.0),
                                                    child: Center(
                                                        child: Text(
                                                      "All",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF868484),
                                                          fontSize: 40),
                                                    ))),
                                              )),
                                        ],
                                      ),
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
                                      child: Text(" Silver Price",
                                          style: TextStyle(
                                            fontSize: 28,
                                            color: Color(0xFF6C6C6C),
                                          )),
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
                                      child: Obx(
                                        () => Text(
                                            ' ${controllerSilver.silverPrice.value}',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.blueGrey
                                                    .withOpacity(0.9))),
                                      ),
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
                child: Text(" Silver Jewelry",
                    style: TextStyle(
                        fontSize: 40,
                        color: const Color(0xFFF5ECEE).withOpacity(0.6))),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      blurRadius: 5,
                      offset: const Offset(0, -4),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        const Text(
                          "New Jewelry",
                          style: TextStyle(
                              color: Color(0xFF868484),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 120),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => NewJewelrySilver());
                          },
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xFF868484),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Obx(() {
                      if (controllerSilver.silverNewList.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            final imageUrl =
                                controllerSilver.silverNewList[index]['id'];
                            int id =
                                controllerSilver.silverNewList[index]['id'];
                            return GestureDetector(
                              onTap: () {
                                print(
                                    "${controllerSilver.silverNewList[index]['id']}");

                                Get.to(DetProductGold(), arguments: [id]);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12.0, right: 5, left: 8),
                                child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                      borderRadius:
                                          const BorderRadiusDirectional.only(
                                              topStart: Radius.circular(50),
                                              bottomEnd: Radius.circular(50)),
                                      border: Border.all(
                                          color: AppColor()
                                              .color7
                                              .withOpacity(0.5),
                                          width: 4),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(alignment: Alignment.bottomLeft,child: Text("${controllerSilver.silverNewList[index]['final_price']} \$",style: TextStyle(fontSize: 20),)),
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
                        padding: EdgeInsets.symmetric(
                            horizontal: displayWidth * .02),
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
                                          opacity:
                                              index == currentIndex ? 1 : 0,
                                          duration: const Duration(seconds: 1),
                                          curve: Curves.fastLinearToSlowEaseIn,
                                          child: Text(
                                            index == currentIndex
                                                ? '${listOfStrings[index]}'
                                                : '',
                                            style:  TextStyle(
                                              color: Color(controllerSilver.color.value),
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
                                              ?  Color(controllerSilver.color.value)
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
          ),
        ],
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
