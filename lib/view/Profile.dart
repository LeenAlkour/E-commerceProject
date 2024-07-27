import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_jewelry/view/Favioret.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/GoldController.dart';
import 'Cart.dart';
import 'Home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();

}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    color.currentIndex.value=3;
    super.initState();
  }
  final GoldController color = Get.put(GoldController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
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
                  setState(() {
                    color.currentIndex.value = index;

                    if(index==1)
                      Get.offAll(
                          Favioret());
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
      endDrawer: Drawer(
        child: Column(
          children: [
            Obx(()=> Container(
              height: 200,
              color: Color(color.color.value).withOpacity(0.8),
            ),),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              leading: const Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(color.color.value),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(()=>CircleAvatar(
              backgroundColor: Color(0xCAF6F0F0),
              child:  Icon(
                Icons.person,
                size: 60,
                color: Color(color.color.value),
              ),
              radius: 50.0,
            )),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                child: GestureDetector(onTap: ()=>color.red(),
                  child: Container(

                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF810023),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(onTap: ()=>color.greenG(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF083131),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(onTap: ()=>color.babygreen(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF197066),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(onTap: ()=>color.blueF(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF2CBEFD),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(onTap: ()=>color.greenF(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF5C9309),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(onTap: ()=>color.babyblue(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF0A558A),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(onTap: ()=>color.blueG(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF030E4B),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              )
              ,    Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(onTap: ()=>color.pink(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF960441),
                        borderRadius: BorderRadius.circular(90)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
