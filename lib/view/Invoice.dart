import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

import '../controller/GoldController.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  void initState() {
    controller.getInvoice(controller.token);
    // TODO: implement initState
    super.initState();
  }

  @override
   GoldController controller = Get.find();
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.invoice.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return Scaffold(
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton.extended(
                      elevation: 30.0,
                      onPressed: () {
                        controller.notPurchased(controller.token);
                      },
                      label: Text("Cencle",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      backgroundColor: Color(controller.color.value),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton.extended(
                      elevation: 30.0,
                      onPressed: () {
                        controller.purchased(controller.token);
                      },
                      label: Text("Ok",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      backgroundColor: Color(controller.color.value),
                    ),
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              backgroundColor: Color(controller.color.value),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Invoice #",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "${controller.invoice['invoice_no']}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              leadingWidth: 210,
            ),
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Date -Time : ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0),
                      child: Row(
                        children: [
                          TimerBuilder.periodic(Duration(days: 1),
                              builder: (context) {
                            String formattedDate =
                                DateFormat('yyyy/MM/dd').format(DateTime.now());
                            return Text("${formattedDate} - ",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black.withOpacity(0.8)));
                          }),
                          TimerBuilder.periodic(Duration(seconds: 1),
                              builder: (context) {
                            String formattedTime =
                                DateFormat('hh :mm a').format(DateTime.now());
                            return Text(
                              "${formattedTime}",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black.withOpacity(0.8)),
                            );
                          }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      border: Border.all(color: Colors.white70),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.18),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Items",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Quantity",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Price",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Total",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.invoice["items"].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      controller.invoice["items"][index]["name"]
                                          .toString(),
                                      maxLines: 2,
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis),
                                    )),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                                "${controller.invoice["items"][index]["quantity"].toString()}"))),
                                    Expanded(
                                        child: Text(
                                            "${controller.invoice["items"][index]["price"].toString()} \$")),
                                    Expanded(
                                        child: Text(
                                            '${controller.invoice["items"][index]["total_price"].toString()} \$')),
                                  ],
                                ),
                                Divider(
                                  color: Colors.white,
                                  thickness: 1.5,
                                )
                              ],
                            ),
                          );
//   Image.network(
//   imageUrl,
//   fit: BoxFit.cover,
// );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text(
                    "TOTAL PRICE  ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "${controller.invoice['total_price']}\$",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ]));
      }
    });
  }
}
