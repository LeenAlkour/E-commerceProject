import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'controller/GoldController.dart';

GoldController controller = Get.put(GoldController as GoldController);

class GoldService extends GetxService {
  String baseUrl = "http://10.0.2.2:8000/api";
  Future<List<dynamic>> getAllGold() async {
    var url = '$baseUrl/seeAllGold';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
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

  Future<List<dynamic>> getNewGold() async {
    var url = '$baseUrl/displayNewGold';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get gold products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getRingsGold() async {
    var url = '$baseUrl/seeGoldenRings';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get gold products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getEarringsGold() async {
    var url = '$baseUrl/seeGoldenEarrings';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get gold products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getBraceletsGold() async {
    var url = '$baseUrl/seeGoldenBracelet';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get gold products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getNecklacesGold() async {
    var url = '$baseUrl/seeGoldenNecklace';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get gold products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<double> fetchGoldPrice() async {
    var response = await http.get(Uri.parse('$baseUrl/goldPrice'));
    final decoded = json.decode(response.body);

    if (response.statusCode == 200) {
      print(json.decode(response.body));
      final Map<String, dynamic> data = json.decode(response.body);
      final goldPrice = data['gold_price'];
      print(goldPrice);
      return goldPrice;
    } else {
      Get.snackbar("error loading",
          " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
      print('Failed to get gold products');
      return 0;
    }
  }

  Future<double> fetchSilverPrice() async {
    var response = await http.get(Uri.parse('$baseUrl/silverPrice'));
    final decoded = json.decode(response.body);

    if (response.statusCode == 200) {
      print(json.decode(response.body));
      final Map<String, dynamic> data = json.decode(response.body);
      final goldPrice = data['gold_price'];
      print(goldPrice);
      return goldPrice;
    } else {
      Get.snackbar("error loading",
          " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
      print('Failed to get gold products');
      return 0;
    }
  }

  Future<List<dynamic>> getBraceletsSilver() async {
    var url = '$baseUrl/seeSilverBracelet';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get Silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getNecklacesSilver() async {
    var url = '$baseUrl/seeSilverNecklace';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("seeSilverNecklace");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get Silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getEarringsSilver() async {
    var url = '$baseUrl/seeSilverEarrings';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getAllSilver() async {
    var url = '$baseUrl/seeAllSilver';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
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

  Future<List<dynamic>> getRingsSilver() async {
    var url = '$baseUrl/seeSilverRings';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);

        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> getNewSilver() async {
    var url = '$baseUrl/displayNewSilver';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> sortGoldByAsc(var id) async {
    var url = '$baseUrl/sortGoldByAsc/$id';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> sortGoldByDes(var id) async {
    var url = '$baseUrl/sortGoldByDes/$id';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> sortSilverByAsc(var id) async {
    var url = '$baseUrl/sortSilverByAsc/$id';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> sortSilverByDes(var id) async {
    var url = '$baseUrl/sortSilverByDes/$id';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("new");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> goldCheaperThan(var id, var cheaperThan) async {
    var url = '$baseUrl/goldCheaperThan';
    try {
      final response = await http.post(body: {
        'price': '30000',
        'category': '1'
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        if (response.statusCode == 200 &&
            json.decode(response.body)['message'].contains("we")) {
          Get.snackbar(
              duration: Duration(seconds: 3),
              "error loading",
              " we don't have any product cheaper than:$cheaperThan");
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

  Future<List<dynamic>> silverCheaperThan(var id, var cheaperThan) async {
    var url = '$baseUrl/silverCheaperThan';
    try {
      final response = await http.post(body: {
        'price': '$cheaperThan',
        'category': '$id'
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        if (response.statusCode == 200 &&
            json.decode(response.body)['message'].contains("we")) {
          Get.snackbar(
              duration: Duration(seconds: 3),
              "error loading",
              " we don't have any product cheaper than:$cheaperThan");
        }
        print(response.body);
        print("silverCheaperThan");
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

  Future<List<dynamic>> goldGreaterThan(var id, var greaterThan) async {
    var url = '$baseUrl/goldGreaterThan';
    try {
      final response = await http.post(body: {
        'price': '$greaterThan',
        'category': '$id'
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        if (response.statusCode == 200 &&
            json.decode(response.body)['message'].contains("we")) {
          Get.snackbar(
              duration: Duration(seconds: 3),
              "error loading",
              " we don't have any product Greater than:$greaterThan");
        }
        print(response.body);
        print("goldGreaterThan");
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

  Future<List<dynamic>> silverGreaterThan(var id, var greaterThan) async {
    var url = '$baseUrl/silverGreaterThan';
    try {
      final response = await http.post(body: {
        'price': '$greaterThan',
        'category': '$id'
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        if (response.statusCode == 200 &&
            json.decode(response.body)['message'].contains("we")) {
          Get.snackbar(
              duration: Duration(seconds: 3),
              "error loading",
              " we don't have any product Greater than:$greaterThan");
        }
        print(response.body);
        print("goldGreaterThan");
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

  Future<List<dynamic>> displayCart(var token) async {
    var url = '$baseUrl/displayCart';
    try {
      final response = await http.get(headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        if (response.statusCode == 200 &&
            json.decode(response.body).contains("you")) {
          Get.snackbar(
              duration: Duration(seconds: 3),
              "note",
              " ${json.decode(response.body)}");
        }

        print(response.body);
        print("displayCart");
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

  Future<List<dynamic>> displayHelloName(var token) async {
    var url = '$baseUrl/helloName';
    try {
      final response = await http.get(headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("displayHelloName");
        return json.decode(response.body);
      } else {
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> goldBetween(var id, var price1, var price2) async {
    var url = '$baseUrl/goldBetween';
    try {
      final response = await http.post(body: {
        'price1': '$price1',
        'price2': '$price2',
        'id': '$id'
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200 &&
          json.decode(response.body)['message'].contains("we")) {
        Get.snackbar(
            duration: Duration(seconds: 3),
            "error loading",
            " we don't have any product in this price range");
      }
      else if (response.statusCode == 200) {

        print(response.body);
        print("goldBetween");
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

  Future<dynamic> silverBetween(var id, var price1, var price2) async {
    var url = '$baseUrl/silverBetween';
    try {
      final response = await http.post(body: {
        'price1': '$price1',
        'price2': '$price2',
        'id': '$id'
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200 &&
          json.decode(response.body)['message'].contains("we")) {
        Get.snackbar(
            duration: Duration(seconds: 3),
            "error loading",
            " we don't have any product in this price range");
      }
      else if (response.statusCode == 200) {

        // print(json.decode(response.body)['message']);
        print("silverBetween");
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

  Future<dynamic> displayGoldItem(var id) async {
    var url = 'http://10.0.2.2:8000/api/displayGoldItem/$id';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("displayGoldItem");
        print("$response.statusCode");

        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get gold products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> displaySilverItem(var id) async {
    var url = 'http://10.0.2.2:8000/api/displaySilverItem/$id';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("displayGoldItem");
        print("$response.statusCode");

        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get gold products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> displayInvoice(var token) async {
    var url = '$baseUrl/invoice';
    try {
      final response = await http.get(headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("displayinvoice");
        return json.decode(response.body);
      } else {
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> displayOrderHistory(var token) async {
    var url = '$baseUrl/orderHistory';
    try {
      final response = await http.get(headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("displayOrderHistory");
        return json.decode(response.body);
      } else {
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> goldChart() async {
    var url = '$baseUrl/goldPriceChart';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("goldChart");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<List<dynamic>> silverChart() async {
    var url = '$baseUrl/silverPriceChart';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("silverChart");
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        print('Failed to get silver products');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> goldPriceDetails() async {
    var url = '$baseUrl/goldPriceDetails';
    try {
      final response = await http.get(headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("goldPriceDetails");
        return json.decode(response.body);
      } else {
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> silverPriceDetails() async {
    var url = '$baseUrl/silverPriceDetails';
    try {
      final response = await http.get(headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        print("silverPriceDetails");
        return json.decode(response.body);
      } else {
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  Future<dynamic> testGoldCheaperThan(dynamic category, dynamic price) async {
    var url = 'http://10.0.2.2:8000/api/goldCheaperThan';
    try {
      final response = await http.post(body: {
        "price": "$price",
        "category": "$category"
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200) {
        print("test Cheaper ok");
        print(response.body);
        if (response.statusCode == 200 &&
            json.decode(response.body)['message'].contains("we")) {
          Get.snackbar(
              duration: Duration(seconds: 3),
              "error loading",
              " we don't have any product cheaper than:$price");
          return [];
        }
        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        return[];
      }
    } catch (e) {
      print('Error: $e');
      return[];
    }
  }

  Future<dynamic> testGoldGreaterThan(dynamic category, dynamic price) async {
    var url = 'http://10.0.2.2:8000/api/goldGreaterThan';
    try {
      final response = await http.post(body: {
        "price": "$price",
        "category": "$category"
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200 &&
          json.decode(response.body)['message'].contains("we")) {
        Get.snackbar(
            duration: Duration(seconds: 3),
            "error loading",
            " we don't have any product cheaper than:$price");
        return [];
      }
     else if (response.statusCode == 200) {
        print("test goldGreaterThan ok");
        print(response.body);

        return json.decode(response.body);
      } else {
        Get.snackbar("error loading",
            " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
        return[];
      }
    } catch (e) {

      print('Error: $e');
      return[];
    }
  }

  Future<dynamic> testSilverCheaperThan(dynamic category, dynamic price) async {
    var url = 'http://10.0.2.2:8000/api/silverCheaperThan';
    try {
      final response = await http.post(body: {
        "price": "$price",
        "category": "$category"
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200 &&
          json.decode(response.body)['message'].contains("we")) {
        Get.snackbar(
            duration: Duration(seconds: 3),
            "error loading",
            " we don't have any product cheaper than:$price");
        return [];
      }
     else if (response.statusCode == 200) {
        print("test silverCheaper ok");
        print(response.body);

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

  Future<dynamic> testSilverGreaterThan(dynamic category, dynamic price) async {
    var url = 'http://10.0.2.2:8000/api/silverGreaterThan';
    try {
      final response = await http.post(body: {
        "price": "$price",
        "category": "$category"
      }, headers: {
        'Accept': 'application/json',
      }, Uri.parse(url));
      if (response.statusCode == 200 &&
          json.decode(response.body)['message'].contains("we")) {
        Get.snackbar(
            duration: Duration(seconds: 3),
            "error loading",
            " we don't have any product Greater than:$price");
        return [];
      }
      else if (response.statusCode == 200) {
        print("test silverGreater ok");
        print(response.body);


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



  Future<dynamic> displayShowOrderDetails(dynamic orderNumber,var token) async {
    var url = 'http://10.0.2.2:8000/api/showOrderDetails';
    try {
      final response = await http.post(body: {
        "orderNumber": "$orderNumber",

      }, headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      }, Uri.parse(url));

       if (response.statusCode == 200) {
        print("displayShowOrderDetails");
        print(response.body);


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

}
