import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controller/GoldController.dart';

class SizerRingPage extends StatefulWidget {
  const SizerRingPage({Key? key}) : super(key: key);

  @override
  State<SizerRingPage> createState() => _SizerRingPageState();
}

var valueChose;
double x = 100;
List listItem = ["PriceGoldGram", 'PriceGoldOz', "PriceGoldOnce"];
late TooltipBehavior _tooltipBehavior;

class _SizerRingPageState extends State<SizerRingPage> {
  @override
  final GoldController controller = Get.find();
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    controller.getChartGold();
    controller.getGoldPriceDetails();
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Gold Price Chart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          backgroundColor: Color(controller.color.value),
        ),
        body: Obx(() {
          if (controller.goldChartList.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  DropdownButton(
                      iconSize: 45,
                      hint: Text(
                        "${controller.list.value}",
                        style: TextStyle(fontSize: 30),
                      ),
                      value: valueChose,
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        controller.list.value = newValue;
                        print("${controller.list.value}");
                      }),
                  if (controller.list.value == "PriceGoldGram")
                    Text(
                      "${controller.goldPriceDetailsList['gold_price_gram']} \$",
                      style: TextStyle(fontSize: 30),
                    ),
                  if (controller.list.value == "PriceGoldOz")
                    Text(
                      "${controller.goldPriceDetailsList['gold_price_oz']} \$",
                      style: TextStyle(fontSize: 30),
                    ),
                  if (controller.list.value == "PriceGoldOnce")
                    Text(
                      "${controller.goldPriceDetailsList['gold_price_ounce']} \$",
                      style: TextStyle(fontSize: 30),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //controller.list.value
                        if (controller.list.value == "PriceGoldGram" &&
                            controller.goldPriceDetailsList['chgXau_gram'] > 0)
                          Icon(Icons.arrow_upward,
                              color: Colors.green, fill: 0.5),

                        if (controller.list.value == "PriceGoldGram" &&
                            controller.goldPriceDetailsList['chgXau_gram'] < 0)
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                          ),
                        if (controller.list.value == "PriceGoldOnce" &&
                            controller.goldPriceDetailsList['chgXau_ounce'] > 0)
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                          ),

                        if (controller.list.value == "PriceGoldOnce" &&
                            controller.goldPriceDetailsList['chgXau_ounce'] < 0)
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                          ),

                        if (controller.list.value == "PriceGoldOz" &&
                            controller.goldPriceDetailsList['chgXau_oz'] > 0)
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                          ),

                        if (controller.list.value == "PriceGoldOz" &&
                            controller.goldPriceDetailsList['chgXau_oz'] < 0)
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                          ),
                        SizedBox(
                          width: 5,
                        ),
                        if (controller.list.value == "PriceGoldGram")
                          Text(
                            "${controller.goldPriceDetailsList['chgXau_gram']}",
                            style: TextStyle(fontSize: 30),
                          ),
                        if (controller.list.value == "PriceGoldOz")
                          Text(
                            "${controller.goldPriceDetailsList['chgXau_oz']}",
                            style: TextStyle(fontSize: 30),
                          ),
                        if (controller.list.value == "PriceGoldOnce")
                          Text(
                            "${controller.goldPriceDetailsList['chgXau_ounce']}",
                            style: TextStyle(fontSize: 30),
                          ),
                      ],
                    ),
                  ),
                  Text(
                    "${controller.goldPriceDetailsList['pcXau']} %",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: SfCartesianChart(
                        tooltipBehavior: _tooltipBehavior,
                        primaryYAxis: NumericAxis(
                            numberFormat:
                                NumberFormat.simpleCurrency(decimalDigits: 2),
                            labelFormat: '{value}'),
                        primaryXAxis: CategoryAxis(),
                        series: <ChartSeries>[
                          LineSeries<ChartData, String>(
                              dataSource: [
                                ChartData(controller.goldChartList[0]["date"],
                                    controller.goldChartList[0]["gold_price"]),
                                ChartData(controller.goldChartList[1]["date"],
                                    controller.goldChartList[1]["gold_price"]),
                                ChartData(controller.goldChartList[2]["date"],
                                    controller.goldChartList[2]["gold_price"]),
                                ChartData(controller.goldChartList[3]["date"],
                                    controller.goldChartList[3]["gold_price"]),
                                ChartData(controller.goldChartList[4]["date"],
                                    controller.goldChartList[4]["gold_price"])
                              ],
                              // Bind the color for all the data points from the data source
                              pointColorMapper: (ChartData data, _) =>
                                  Color(controller.color.value),
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              enableTooltip: true)
                        ]),
                  )
                ],
              ),
            );
          }
        }));
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
// if (number > 0) {
//     print("الرقم إيجابي");
//   } else if (number < 0) {
//     print("الرقم سالب");
//   } else {
//     print("الرقم صفر");
//   }
