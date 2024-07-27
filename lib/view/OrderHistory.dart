import 'package:flutter/material.dart';
import 'package:front_jewelry/view/DetailsOrderHistory.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

import '../controller/GoldController.dart';
import 'Cart.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  final GoldController controller = Get.find();
  @override
  void initState() {
    // TODO: implement initState
    controller.getOrderHistory(controller.token);
    super.initState();
  }

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
                  IconButton(onPressed: () {
                    Get.offAll(Cart());

                  }, icon: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ORDER HISTORY",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "You can cancel your order within 3 hours by pressing\"Cancel\" after your order has been placed .Your order will be automatically cancelled, only when delivery statu shows that your order is incomplete",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          toolbarHeight: 180,
          backgroundColor: Color(controller.color.value),
        ),
        body: Obx(() {
          if (controller.orderHistoryList.value.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else if (!controller.orderHistoryList.isEmpty &&
              controller.orderHistoryList.value ==
                  "you haven't confirmed any prushase before.") {
            return Center(
                child: Text("you haven't confirmed any prushase before."));
          } else {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: controller.orderHistoryList["items_number"],
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    Text(
                      "Order Number : ${controller.orderHistoryList["items"][index]["order_number"]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Date of Order : ${controller.orderHistoryList["items"][index]["order_date"]}",
                        style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Time of Order : ${controller.orderHistoryList["items"][index]["order_time"]}",
                        style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Order Item : ${controller.orderHistoryList["items"][index]["order_items"]}",
                        style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Order Status : ",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        if (controller.orderHistoryList["items"][index]
                                ["order_status"] ==
                            'in progress')
                          Text(
                            "${controller.orderHistoryList["items"][index]["order_status"]}",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.green.withOpacity(0.8)),
                          ),
                        if (controller.orderHistoryList["items"][index]
                                ["order_status"] ==
                            'canceled')
                          Text(
                            "${controller.orderHistoryList["items"][index]["order_status"]}",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red.withOpacity(0.8)),
                          ),
                        if (controller.orderHistoryList["items"][index]
                        ["order_status"] ==
                            'confirmed'||controller.orderHistoryList["items"][index]
                        ["order_status"] ==
                            'retrieved')
                          Text(
                            "${controller.orderHistoryList["items"][index]["order_status"]}",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.8)),
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (controller.orderHistoryList["items"][index]
                                ["order_status"] ==
                            'canceled')
                          GestureDetector(
                            onTap: () {
                              controller.retrieveOrder(
                                  controller.orderHistoryList["items"][index]
                                      ["order_number"],
                                  controller.token);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Center(child: Text("Retrieve")),
                                width: 70,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.2, color: Colors.black54)),
                              ),
                            ),
                          ),
                        GestureDetector(
                          onTap: () { Get.to(DetailsOrderHistory(),arguments: [controller.orderHistoryList["items"][index]["order_number"]]);},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Center(child: Text("Details")),
                              width: 70,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.2, color: Colors.black54)),
                            ),
                          ),
                        ),
                        if (controller.orderHistoryList["items"][index]
                                ["order_status"] !=
                            'canceled')
                          GestureDetector(
                            onTap: () {
                              controller.cancelOrder(
                                  controller.orderHistoryList["items"][index]
                                      ["order_number"],
                                  controller.token);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Center(child: Text("Cancle")),
                                width: 70,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.2, color: Colors.black54)),
                              ),
                            ),
                          ),
                      ],
                    ),
                    Divider(color: Colors.grey, endIndent: 20, indent: 20),
                  ],
                ),
              ),
            );
          }
        }));
  }
}
