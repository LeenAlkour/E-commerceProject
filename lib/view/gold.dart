import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/view/NewJewelryGold.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import '../AppColor.dart';
import 'package:timer_builder/timer_builder.dart';
import 'BraceletsJewelryGold.dart';
import 'Cart.dart';
import 'DetProductGold.dart';
import 'EarringsJewelryGold.dart';
import 'Favioret.dart';
import 'GoldAll.dart';
import 'Home.dart';
import 'NecklacesJewelryGold.dart';
import 'RingJewelryGold.dart';
import '../controller/GoldController.dart';
import 'SizerRingPage.dart';

class gold extends StatefulWidget {
  const gold({Key? key}) : super(key: key);

  @override
  State<gold> createState() => _goldState();
}

class _goldState extends State<gold> {
  dynamic time = 0;



  final GoldController controller = Get.find();
@override
  void initState() {controller.getNewGold;
controller.currentIndex1.value=1;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    controller.currentIndex1.value=1;
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(controller.color.value),
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
                              color: Color(controller.color.value),
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
                                          onTap: (){
                                            controller.getRingsGold();
                                            Get.to(() => RingJewelryGold());},
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
                                          onTap: (){
                                            controller.getEarringsGold();
                                            Get.to(() => EarringsJewelryGold());},
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
                                          onTap: (){  controller.getBraceletsGold();
                                          Get.to(() => BraceletsJewelryGold());},
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
                                    child: GestureDetector(onTap: (){controller.getNecklacesGold();
                                    Get.to(() => NecklacesJewelryGold());},
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
                                          child: GestureDetector(
                                            onTap:(){controller.getAllGold();
                                            Get.to(() => const GoldAll());},
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
                                      width: displayWidth * 0.10,
                                    ),
                                    Column(
                                      children: [
                                        Text("Last Change:",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blueGrey
                                                    .withOpacity(0.8))),
                                        Padding(
                                          padding: const EdgeInsets.all(0.1),
                                          child:  Row(
                                            children: [
                                              TimerBuilder.periodic(Duration(days: 1), builder: (context) {
                                                String formattedDate = DateFormat('yyyy/MM/dd').format(DateTime.now());
                                                return Text("${formattedDate} - ", style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.blueGrey
                                                        .withOpacity(0.8)));
                                              }),
                                              TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
                                                String formattedTime = DateFormat('hh:mm a').format(DateTime.now());
                                                return Text("${formattedTime}", style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.blueGrey
                                                        .withOpacity(0.8)),);
                                              }),

                                            ],
                                          ),
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
                                      child: Text("Current Purchase Price /gr",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black
                                                  .withOpacity(0.6))),
                                    ),


                                    Padding(
                                        padding: const EdgeInsets.all(8),
                                        child:   Obx(
                                              () => Text(' ${controller.goldPrice.value}',style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.blueGrey
                                                  .withOpacity(0.9))),),
                                      ),

                                    Padding(
                                      padding: const EdgeInsets.all(0.30),
                                      child: Text("Powered by: Binance",
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
                child: Text("Gold Jewelry",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFFF5ECEE).withOpacity(0.6))),
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
                        GestureDetector(

    onTap:(){controller.getAllGold();
    Get.to(() =>  const NewJewelryGold());},
                          child: Text(
                            "See all",
                            style: TextStyle(
                                color:  Color(0xFFC59B5A),
                                fontSize: 20,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Obx(() {
                      if (controller.goldNewList.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            final imageUrl = controller.goldNewList[index]['id'];
                            return GestureDetector(onTap: (){Get.to(DetProductGold(),arguments: [controller.goldNewList[index]['id']]);},
                              child: Padding(
                                padding: const EdgeInsets.only(top: 12.0, right: 5, left: 8),
                                child: Container(

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
                                      child: Align(alignment: Alignment.bottomLeft,
                                          child: Text("${controller.goldNewList[index]['final_price']} \$",
                                            style: TextStyle(fontSize: 20),)),
                                    ),
                              ),
                              ));
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
                        padding:
                            EdgeInsets.symmetric(horizontal: displayWidth * .02),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            setState(() {
                              if(index==0)
                                Get.to(
                                    Home());
                              if(index==2)
                                Get.to(
                                   SizerRingPage());
                              if(index==3) {
                                Get.to(
                                    Cart());
                              }
                              controller.currentIndex1.value = index;
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
                                width: index == controller.currentIndex1.value
                                    ? displayWidth * .32
                                    : displayWidth * .18,
                                alignment: Alignment.center,
                                child: AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  height: index == controller.currentIndex1.value
                                      ? displayWidth * .12
                                      : 0,
                                  width: index == controller.currentIndex1.value
                                      ? displayWidth * .32
                                      : 0,
                                  decoration: BoxDecoration(
                                    color: index == controller.currentIndex1.value
                                        ? Colors.grey.withOpacity(.1)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: index == controller.currentIndex1.value
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
                                          width: index == controller.currentIndex1.value
                                              ? displayWidth * .13
                                              : 0,
                                        ),
                                        AnimatedOpacity(
                                          opacity: index == controller.currentIndex1.value ? 1 : 0,
                                          duration: const Duration(seconds: 1),
                                          curve: Curves.fastLinearToSlowEaseIn,
                                          child: Text(
                                            index == controller.currentIndex1.value
                                                ? '${listOfStrings1[index]}'
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
                                          width: index == controller.currentIndex1.value
                                              ? displayWidth * .03
                                              : 20,
                                        ),
                                        Icon(
                                          listOfIcons1[index],
                                          size: displayWidth * .076,
                                          color: index == controller.currentIndex1.value
                                              ? Color(controller.color.value)
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

List<IconData> listOfIcons1 = [
  Icons.home_rounded,
  Icons.g_mobiledata,
  Icons.area_chart_outlined,
  Icons.shopping_bag_outlined,


];

List<String> listOfStrings1 = [
  'Home',
  'Gold ',
  'ChartGold',

  'Cart'


];
