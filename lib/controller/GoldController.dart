import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:front_jewelry/GoldService.dart';
import 'package:front_jewelry/view/Profile.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket_channel/io.dart';

import '../view/Cart.dart';
import '../view/Home.dart';
import 'package:intl/intl.dart';
class GoldController extends GetxController {
  final GoldService getService = Get.put(GoldService());




  void updateValues(double newLowerValue, double newUpperValue) {
    price1.value = newLowerValue;
    price2.value = newUpperValue;
  }
  var color = 0xFF510923.obs;
 var token="eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNWNlMzhjYmU1OGFiNmQ0NmI2MzI2NjMzODJhOTkwNzJlYjA5M2RlZWMyNzlhNDk0NzZhMDdmNzYzZGYzMTA3ZmZkODFmNDdmYzUxNWRmMjIiLCJpYXQiOjE2OTIxODU0NTEuODY5ODk2LCJuYmYiOjE2OTIxODU0NTEuODY5OTE0LCJleHAiOjE3MjM4MDc4NTEuODQyMDI1LCJzdWIiOiIzNCIsInNjb3BlcyI6W119.aXSMXBgnNpfPqzQWUi2MMVCl778BBESAIa6UBC2P3p8-CYnQggGGlWlM502ETemjclv9xQP7yJyMBK-juePWDKSWon7ef-s-qK1rPKtOMQExUXV_Bg19IE3qPwZYI5cDL1XTVD2_FHUbbhSvqAY6n9Dgh1rQ-QMHLaXndPmfRdiHC0RaBxqX70wRheGMyytJqZAuoRdFoB1taN2QH-RBOjly7JedIsf_MA4GJiIGQ1di_MecJv14CBdK9X2giAkgLELYjE5K_UAeAON7PhgHfJhTPDhhbo8K9CP6HLF---mzkuxq7IW_5DLpDsYNEu0U6m4oOcYSgRGfM1uE_f1KMe6IacMymrycSdJWCoQbj9whSZwlMNod2DvpoIi7YY0QK8ODteuG1p3xHQfPaZC54T9YiD1ASNyyiV0kWzsggP7lB4D5ByjosH-wN5ipHZ-bczdUt4Dpuuomx0zIEe9hHw_e9CDBExbaFm7IKTzasawi7MBHJ33SZf8rg-wAq2OcCn7E5RgzLZLKJ9qpbYgPkVOzsKjVAyj3Rhn416jN1s7hFCnxZue4ZoqCEy_AiBRCKHZNLjvzTcCk7dYZutt6y_WiyV7iTTMPZ4RD0e-xJ8VOwPA4O-mymt0x0tzscI_T5u54G5nAeq5NTiYbF-XNfM3Ic5jJ9iyxDHNqAcH-TQ8";
 void babyblue() {
    color.value = 0xFF0A558A;
  }

  void blueG() {
    color.value = 0xFF030E4B;
  }

  void blueF() {
    color.value = 0xFF2CBEFD;
  }

  void greenG() {
    color.value = 0xFF083131;
  }

  void greenF() {
    color.value = 0xFF5C9309;
  }

  void babygreen() {
    color.value = 0xFF197066;
  }

  void pink() {
    color.value = 0xFF960441;
  }

@override
  void onInit() {
  startTimer();
    // TODO: implement onInit
    super.onInit();
  }
  void red() {
    color.value = 0xFF810023;
  }
  var currentIndex1=1.obs;
dynamic list='select'.obs;
  var silverPriceDetailsList={}.obs;
  var goldPriceDetailsList={}.obs;
 var currentIndex = 0.obs;
var rate=0.0.obs;
var index=0.obs;
var widget_current= Home().obs;
 var invoice={}.obs;
 var orderHistoryList={}.obs;
 dynamic size=0.0.obs;
  RxDouble price1 = 0.00.obs;
  RxDouble price2 = 100000.00.obs;
  var quantity=1.obs;
  dynamic numCheaper = 0.obs;
  dynamic numGreater = 0.obs;
  // var token = ''.obs;
  var helloName=<dynamic>[].obs;
  var goldChartList=<dynamic>[].obs;
  var silverChartList=<dynamic>[].obs;
  var displayCartList = <dynamic>[].obs;
  var goldAllList = <dynamic>[].obs;
  var goldNewList = <dynamic>[].obs;
  dynamic? goldRingsList = <dynamic>[].obs;
  dynamic goldEarringsList = <dynamic>[].obs;
  var goldBraceletsList = <dynamic>[].obs;
  var goldNecklacesList = <dynamic>[].obs;
  var message = <dynamic>[].obs;
  var goldPrice = 0.0.obs;
  var silverPrice = 0.0.obs;
  var detGoldItem = {}.obs;
  var detSilverItem = {}.obs;
  var quantity_Item=1.obs;
  var showOrderDetailsList=<dynamic>[].obs;

  Timer? timer;
  var silverBraceletsList = <dynamic>[].obs;
  var silverNecklacesList = <dynamic>[].obs;
  var silverEarringsList = <dynamic>[].obs;
  var silverAllList = <dynamic>[].obs;
  var silverRingsList = <dynamic>[].obs;
  var silverNewList = <dynamic>[].obs;

  @override
  void increase_num_cheaper() {
    numCheaper.value= numCheaper.value+100;
  }
  void increase_quantity_Item() {
    quantity_Item.value= quantity_Item.value+1;
  }
  void decrease_quantity_Item() {
    if (quantity_Item.value >= 1) {
      quantity_Item.value=quantity_Item.value-1;

    }
  }
  void decrease_num_cheaper() {
    print("${numCheaper.value}");
    if (numCheaper.value >= 1) {
      print("${numCheaper.value}");
      numCheaper.value=numCheaper.value-100;
      print("${numCheaper.value}");
    }
  }

  void increase_num_greater() {
    numGreater.value= numGreater.value+100;
  }

  void decrease_num_greater() {
    print("${numGreater.value}");
    if (numGreater.value >= 1) {
      print("${numGreater.value}");
      numGreater.value=numGreater.value-100;
      print("${numGreater.value}");
    }
  }



  Future<void> Logout(var token) async {
    var request =
        http.Request('GET', Uri.parse('http://127.0.0.1:8000/api/logout'));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print("displayGoldItem =200");
      print(await response.stream.bytesToString());
      Get.snackbar("Logout Successful", '');
      return Get.to(Home());
    } else {
      Get.snackbar("Logout failed", '');
      print(response.reasonPhrase);
    }
  }

  void getAllGold() async {
    goldAllList.value = await getService.getAllGold();
  }

  Future<void> getNewGold() async {
    goldNewList.value = await getService.getNewGold();
  }

  Future<void> getRingsGold() async {
    goldRingsList.value = await getService.getRingsGold();
  }

  Future<void> getEarringsGold() async {
    goldEarringsList.value = await getService.getEarringsGold();
  }

  Future<void> getBraceletsGold() async {
    goldBraceletsList.value = await getService.getBraceletsGold();
  }

  Future<void> getNecklacesGold() async {
    goldNecklacesList.value = await getService.getNecklacesGold();
  }

  Future<void> getBraceletsSilver() async {
    silverBraceletsList.value = await getService.getBraceletsSilver();
  }

  Future<void> getNecklacesSilver() async {
    silverNecklacesList.value = await getService.getNecklacesSilver();
  }

  Future<void> getEarringsSilver() async {
    silverEarringsList.value = await getService.getEarringsSilver();
  }

  void getAllSilver() async {
    silverAllList.value = await getService.getAllSilver();
  }

  Future<void> getRingsSilver() async {
    silverRingsList.value = await getService.getRingsSilver();
  }

  Future<void> getRingsGoldByDes() async {
    goldRingsList.value = await getService.sortGoldByDes(1);
  }

  Future<void> getRingsGoldByAsc() async {
    goldRingsList.value = await getService.sortGoldByAsc(1);
  }

  Future<void> getRingsSilverByDes() async {
    silverRingsList.value = await getService.sortSilverByAsc(1);
  }

  Future<void> getRingsSilverByAsc() async {
    silverRingsList.value = await getService.sortSilverByAsc(1);
  }

  Future<void> getBraceletsGoldByDes() async {
    goldBraceletsList.value = await getService.sortGoldByDes(2);
  }

  Future<void> getBraceletsGoldByAsc() async {
    goldBraceletsList.value = await getService.sortGoldByAsc(2);
  }

  Future<void> getBraceletsSilverByDes() async {
    silverBraceletsList.value = await getService.sortSilverByAsc(2);
  }

  Future<void> getBraceletsSilverByAsc() async {
    silverBraceletsList.value = await getService.sortSilverByAsc(2);
  }

  Future<void> getEarringsGoldByDes() async {
    goldEarringsList.value = await getService.sortGoldByDes(3);
  }

  Future<void> getEarringsGoldByAsc() async {
    goldEarringsList.value = await getService.sortGoldByAsc(3);
  }

  Future<void> getEarringsSilverByDes() async {
    silverEarringsList.value = await getService.sortSilverByAsc(3);
  }

  Future<void> getEarringsSilverByAsc() async {
    silverEarringsList.value = await getService.sortSilverByAsc(3);
  }

  Future<void> getNecklacesGoldByDes() async {
    goldNecklacesList.value = await getService.sortGoldByDes(4);
  }

  Future<void> getNecklacesGoldByAsc() async {
    goldNecklacesList.value = await getService.sortGoldByAsc(4);
  }

  Future<void> getNecklacesSilverByDes() async {
    silverNecklacesList.value = await getService.sortSilverByAsc(4);
  }

  Future<void> getNecklacesSilverByAsc() async {
    silverNecklacesList.value = await getService.sortSilverByAsc(4);
  }

/////////////////////////////////////
  Future<void> getRingsGoldGreaterThan(numGreater) async {
    goldRingsList.value =
        await getService?.testGoldGreaterThan(1,numGreater);
  }

  Future<void> getRingsGoldCheaperThan(numCheaper) async {
    goldRingsList.value =
        await getService.testGoldCheaperThan(1,numCheaper);
  }

  Future<void> getRingsSilverGreaterThan(numGreater) async {
    silverRingsList.value =
        await getService.testSilverGreaterThan(1, numGreater);
  }

  Future<void> getRingsSilverCheaperThan(numCheaper) async {
    silverRingsList.value =
        await getService.testSilverCheaperThan(1, numCheaper);
  }

  Future<void> getBraceletsGoldGreaterThan(numGreater) async {
    goldBraceletsList.value =
        await getService.testGoldGreaterThan(2, numGreater);
  }

  Future<void> getBraceletsGoldCheaperThan(numCheaper) async {
    goldBraceletsList.value =
        await getService.testGoldCheaperThan(2, numCheaper);
  }

  Future<void> getBraceletsSilverGreaterThan(numGreater) async {
    silverBraceletsList.value =
        await getService.testSilverGreaterThan(2, numGreater);
  }

  Future<void> getBraceletsSilverCheaperThan(numCheaper) async {
    silverBraceletsList.value =
        await getService.testSilverCheaperThan(2, numCheaper);
  }

  Future<void> getEarringsGoldGreaterThan(numGreater) async {
    goldEarringsList.value =
        await getService.testGoldGreaterThan(3, numGreater);
  }

  Future<void> getEarringsGoldCheaperThan(numCheaper) async {
    goldEarringsList.value =
        await getService.testGoldCheaperThan(3, numCheaper);
  }

  Future<void> getEarringsSilverGreaterThan(numGreater) async {
    silverEarringsList.value =
        await getService.testSilverGreaterThan(3, numGreater);
  }

  Future<void> getEarringsSilverCheaperThan(numCheaper) async {
    silverEarringsList.value =
        await getService.testSilverCheaperThan(3, numCheaper);
  }

  Future<void> getNecklacesGoldGreaterThan(numGreater) async {
    goldNecklacesList.value =
        await getService.testGoldGreaterThan(4, numGreater);
  }

  Future<void> getNecklacesGoldCheaperThan(numCheaper) async {
    goldNecklacesList.value =
        await getService.testGoldCheaperThan(4, numCheaper);
  }

  Future<void> getNecklacesSilverGreaterThan(numGreater) async {
    silverNecklacesList.value =
        await getService.testSilverGreaterThan(4, numGreater);
  }

  Future<void> getNecklacesSilverCheaperThan(numCheaper) async {
    silverNecklacesList.value =
        await getService.testSilverCheaperThan(4, numCheaper);
  }

  Future<void> getNewSilver() async {
    silverNewList.value = await getService.getNewSilver();
  }

  Future<void> displayCart() async {
    displayCartList.value = await getService.displayCart(
        token);
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      getGoldPriceDetails();
      getService.fetchSilverPrice().then((value) {
        silverPrice.value = value;
      });
      getService.fetchGoldPrice().then((value) {
        goldPrice.value = value;
      });
      update();
    });
  }

  Future<void> AddToCart(var token, var productId,var size,var quantity) async {



    var url = 'http://10.0.2.2:8000/api/addToCart';
    try {
      final response = await http.post(body: {
        'product_id': '$productId',
        'size':'$size',
        'quantity':'$quantity'

      },headers:{
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'

      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print("AddToCart");
        print(response.body);

        Get.snackbar(duration: Duration(seconds: 4),"${jsonDecode(response.body)['message']}",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");


      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");


      }
    } catch (e) {
      print('Error: $e');

    }



  }

  Future<void> DeleteFromCart(var token,  productId,  size) async {
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('http://10.0.2.2:8000/api/delete'));
    request.fields.addAll({
      'product_id': "${productId as int}",
      'size': '$size',
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {

      // Get.snackbar("product has been deleted successfully",
      //     " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
      print(await response.stream.bytesToString());
      print(DeleteFromCart);
    } else {
      print(response.reasonPhrase);
    }
  }
  Future<void> getRingsGoldBetween( price1, price2)async{
    goldRingsList.value = await getService.goldBetween(1,this.price1.value,this.price2.value);
  }
  Future<void> getRingsSilverBetween( price1, price2)async{
    silverRingsList.value = await getService.silverBetween(1,this.price1.value,this.price2.value);
  }
  Future<void> getBraceletsSilverBetween( price1, price2) async {
    silverBraceletsList.value = await getService.silverBetween(2,this.price1.value,this.price2.value);
  }
  Future<void> getBraceletsGoldBetween( price1, price2) async {
    goldBraceletsList.value = await getService.goldBetween(2,this.price1.value,this.price2.value);
  }
  Future<void> getEarringsSilverBetween(price1, price2) async {
    silverEarringsList.value =
        await getService.silverBetween(3,this.price1.value,this.price2.value);
  }
  Future<void> getEarringsGoldBetween(price1, price2) async {
    goldEarringsList.value =
    await getService.goldBetween(3,this.price1.value,this.price2.value);
  }
  Future<void> getNecklacesGoldBetween(price1, price2) async {
    goldNecklacesList.value =
    await getService.goldBetween(4,this.price1.value,this.price2.value);
  }
  Future<void> getNecklacesSilverBetween(price1, price2) async {
    silverNecklacesList.value =
    await getService.silverBetween(4,this.price1.value,this.price2.value);
  }
@override
void onClose() {
  timer?.cancel();
  super.onClose();
}
  Future<void> goldRate(var rate,var id,var token) async{



    var url = 'http://10.0.2.2:8000/api/rateGold';
    try {
      final response = await http.post(body: {
        'gold_id': '$id',
        'rate': '$rate',

      },headers:{
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'

      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print("goldRate");


      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");


      }
    } catch (e) {
      print('Error: $e');

    }


  }
  Future<void> silverRate(var rate,var id,var token) async{



    var url = 'http://10.0.2.2:8000/api/rateSilver';
    try {
      final response = await http.post(body: {
        'silver_id': '$id',
        'rate': '$rate',

      },headers:{
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'

      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print("silverRate");


      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");


      }
    } catch (e) {
      print('Error: $e');

    }


  }
  Future<void> cancelOrder(var orderNumber,var token) async{



    var url = 'http://10.0.2.2:8000/api/cancelOrder';
    try {
      final response = await http.post(body: {
        'orderNumber': '$orderNumber',


      },headers:{
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'

      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print("cancelOrder");
        Get.snackbar(duration: Duration(seconds: 4),"",
            " ${response.body}");
        getOrderHistory(token);



      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");


      }
    } catch (e) {
      print('Error: $e');

    }


  }
  Future<void> retrieveOrder(var orderNumber,var token) async{



    var url = 'http://10.0.2.2:8000/api/retrieveOrder';
    try {
      final response = await http.post(body: {
        'orderNumber': '$orderNumber',


      },headers:{
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'

      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print("cancelOrder");
        Get.snackbar(duration: Duration(seconds: 4),"",
            " ${response.body}");
        getOrderHistory(token);



      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");


      }
    } catch (e) {
      print('Error: $e');

    }


  }
  Future<void> showOrderDetails(var orderNumber,var token) async{



    var url = 'http://10.0.2.2:8000/api/showOrderDetails';
    try {
      final response = await http.post(body: {
        'orderNumber': '$orderNumber',


      },headers:{
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'

      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print("showOrderDetails");




      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");


      }
    } catch (e) {
      print('Error: $e');

    }


  }
  Future<void> DetGoldItem(var id) async {
    detGoldItem.value = await getService.displayGoldItem(id);
  }
  Future<void> DetSilverItem(var id) async {
    detSilverItem.value = await getService.displaySilverItem(id);
  }
  Future<void> getHelloName() async {
    helloName.value = await getService.displayHelloName(token);
  }


  Future<void> getInvoice(var token) async {
    invoice.value = await getService.displayInvoice(token);
  }
  Future<void> getOrderHistory(var id) async {
    orderHistoryList.value = (await getService.displayOrderHistory(token)) as Map;
  }
  Future<void>purchased(var token)async{
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token' };
    var request = http.Request('GET', Uri.parse('http://10.0.2.2:8000/api/purchased'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Get.snackbar(duration: Duration(seconds: 4),"",
          " The purchase has been confirmed");
      print("purchased");
      displayCart();
      getInvoice(token);
      print(await response.stream.bytesToString());
      Get.off(Cart());
    }
    else {
      print(response.reasonPhrase);
    }

  }
  Future<void>notPurchased(var token)async{
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token' };
    var request = http.Request('GET', Uri.parse('http://10.0.2.2:8000/api/notPurchased'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Get.snackbar(duration: Duration(seconds: 4),"",
          " The purchase has not been confirmed");
      print("purchased");
      displayCart();
      getInvoice(token);

      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }

  Future<void> getChartGold() async {
    goldChartList.value = await getService.goldChart();
  }
  Future<void> getGoldPriceDetails() async {
   goldPriceDetailsList.value = await getService.goldPriceDetails();
  }
  Future<void> getSilverPriceDetails(var id) async {
    silverPriceDetailsList.value = (await getService.silverPriceDetails()) as Map;
  }
  Future<dynamic> goldCheaperThan() async {



    var url = 'http://10.0.2.2:8000/api/goldCheaperThan';
    try {
      var  response = await http.post(body: {"price":"1000000000000000",
        "category":"1"},headers:{
        'Accept': 'application/json',

      }, Uri.parse(url));
      if (response.statusCode == 200) {
        if(response.statusCode == 200 && json.decode(response.body)['message'].contains("we")){
          Get.snackbar(duration: Duration(seconds: 3),"error loading",
              " we don't have any product cheaper than:");
        }
        print(response.body);
        print("goldCheaperThan");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");

        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }

  }
  Future<void> getDisplayShowOrderDetails(var orderNumber, var token) async {
    showOrderDetailsList.value = await getService.displayShowOrderDetails( orderNumber, token);
  }
}
