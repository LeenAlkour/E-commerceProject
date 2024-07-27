import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_jewelry/view/Home.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/GoldController.dart';

class SizeRing extends StatefulWidget {
  const SizeRing({Key? key}) : super(key: key);

  @override
  State<SizeRing> createState() => _SizeRingState();
}

class _SizeRingState extends State<SizeRing> {
  @override
  final GoldController controller = Get.put(GoldController());
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: double.infinity,
          leading: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "RingSizer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Pleas put the ring on the circle to determine its size.",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ],
          ),
          toolbarHeight: 110,
          backgroundColor: Color(controller.color.value),
        ),
        body: GridView.builder(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: size.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onLongPress: (){
                   Get.to(Home(),arguments: [size[index]["size"]]);
                  print( size[index]["size"]);
                },
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              width: size[index]["pSize"],
                              height: size[index]["pSize"],
                              child: CircularProgressIndicator(
                                color: Color(controller.color.value),
                                value: 100,
                              )),
                          Center(child: Text("${ size[index]["size"]}"))
                        ],
                      )),
                ),
              );
            }));
  }
}

List size = [
  {'size': 3, 'pSize': 90.0},
  {'size': 3.5, 'pSize': 95.0},
  {'size': 4, 'pSize': 100.0},
  {'size': 4.5, 'pSize': 105.0},
  {'size': 5, 'pSize': 110.0},
  {'size': 5.5, 'pSize': 115.0},
  {'size': 6, 'pSize': 120.0},
  {'size': 6.5, 'pSize': 90.0},
  {'size': 7, 'pSize': 90.0},
  {'size': 7.5, 'pSize': 90.0},
  {'size': 8, 'pSize': 90.0},
  {'size': 8.5, 'pSize': 90.0},
  {'size': 9, 'pSize': 90.0}
];
