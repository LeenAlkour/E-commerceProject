import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GoldService extends GetxService {
  String baseUrl ="http://10.0.2.2:8000/api";
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
    const url = 'http://10.0.2.2:8000/api/displayNewGold';
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
    const url = 'http://10.0.2.2:8000/api/seeGoldenRings';
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
    const url = 'http://10.0.2.2:8000/api/seeGoldenEarrings';
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
    const url = 'http://10.0.2.2:8000/api/seeGoldenBracelet';
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
     var url = 'http://10.0.2.2:8000/api/seeGoldenNecklace';
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
  Future<String> updateFinalPrice() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:8000/api/goldPrice'));

    if (response.statusCode == 200) {
       return  json.decode(response.body);
    } else {
      return 'Failed';
      //return 'Failed to update final price.';
    }
  }
  // Future<List<dynamic>> fetchItemGold(var id) async {
  //    var url = 'http://10.0.2.2:8000/api/displayGoldItem/$id';
  //   try {
  //     final response = await http.get(Uri.parse(url));
  //     if (response.statusCode == 200) {
  //       print(response.body);
  //
  //       return json.decode(response.body);
  //     } else {
  //       Get.snackbar("error loading",
  //           " server responded:${response.statusCode}:${response.reasonPhrase.toString()}");
  //
  //       return [];
  //     }
  //   } catch (e) {
  //     print('Error: $e');
  //     return [];
  //   }
  // }
}
