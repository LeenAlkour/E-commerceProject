import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/GoldController.dart';
import 'DetProductGold.dart';

class DetailsOrderHistory extends StatefulWidget {
  const DetailsOrderHistory({Key? key}) : super(key: key);

  @override
  State<DetailsOrderHistory> createState() => _DetailsOrderHistoryState();
}

class _DetailsOrderHistoryState extends State<DetailsOrderHistory> {
  @override
  void initState() {

    _goldController.getDisplayShowOrderDetails(Get.arguments[0],_goldController.token);
    // TODO: implement initState
    super.initState();
  }
  final GoldController _goldController = Get.find();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(  title: Text(
        "Cart",
        style: TextStyle(
            color: Colors.white70,
            fontSize: 35,
            fontWeight: FontWeight.bold),
      ),centerTitle: true,),


    body: Obx(() {
      if (_goldController.showOrderDetailsList.isEmpty) {
        return Center(child: Text(" "));
      } else {
        return    ListView.builder(
          shrinkWrap: true,
          itemCount: _goldController.showOrderDetailsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(

                children: [
                  Row(

                    children: [
                      Padding(
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
                      Flexible(
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${_goldController.showOrderDetailsList[index]['name']} \$",style: TextStyle( fontSize:18,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,),),
                            Text(
                              "${_goldController.showOrderDetailsList[index]['price']}",style: TextStyle(overflow: TextOverflow.ellipsis,),),
                            Text(
                                "${_goldController.showOrderDetailsList[index]['size']}",style: TextStyle(overflow: TextOverflow.ellipsis,color:
                            Colors.grey)),

                          ],
                        ),
                      ),





                    ],
                  ),
                  Divider(),
                ],
              ),
            );
          },
        );
      }
    }),
    );
  }
}
