import 'package:front_jewelry/GoldService.dart';
import 'package:get/get.dart';


import 'package:get/get.dart';

class GoldController extends GetxController {

  final GoldService goldAllService = Get.put(GoldService());
  final GoldService goldNewService = Get.put(GoldService());
  final GoldService goldRingsService = Get.put(GoldService());
  final GoldService goldEarringsService = Get.put(GoldService());
  final GoldService goldBraceletsService = Get.put(GoldService());
  final GoldService goldNecklacesService = Get.put(GoldService());
  final GoldService updateFinalPriceService = Get.put(GoldService());
  var goldAllList = <dynamic>[].obs;
  var goldNewList = <dynamic>[].obs;
  var goldRingsList = <dynamic>[].obs;
  var goldEarringsList = <dynamic>[].obs;
  var goldBraceletsList = <dynamic>[].obs;
  var goldNecklacesList = <dynamic>[].obs;
  var message = ''.obs;
  @override
  void onInit() {
    super.onInit();
    _getAllGold();
    _getNewGold();
    _getRingsGold();
    _getEarringsGold();
    _getBraceletsGold();
    _getNecklacesGold();
    _updateFinalPrice();
  }

  Future<void> _getAllGold() async {
    goldAllList.value = await goldAllService.getAllGold();

  }
  Future<void> _getNewGold() async {
    goldNewList.value = await goldNewService.getNewGold();
  }
  Future<void> _getRingsGold() async {
    goldRingsList.value = await goldRingsService.getRingsGold();
  }
  Future<void> _getEarringsGold() async {
    goldEarringsList.value = await goldEarringsService.getEarringsGold();
  }
  Future<void> _getBraceletsGold() async {
    goldBraceletsList.value = await goldBraceletsService.getBraceletsGold();
  }
  Future<void> _getNecklacesGold() async {
    goldNecklacesList.value = await goldNecklacesService.getNecklacesGold();
  }
  Future<void> _updateFinalPrice() async {
    message.value = await updateFinalPriceService.updateFinalPrice();
  }

}
