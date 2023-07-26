import 'package:front_jewelry/controller/GoldController.dart';
import 'package:front_jewelry/GoldService.dart';
import 'package:get/get.dart';



class AppBindings implements Bindings {
  @override
  void dependencies() {
    final GoldController goldController = Get.put(GoldController());
    final GoldService goldService = Get.put(GoldService());
    final GoldController goldNewController = Get.put(GoldController());
    final GoldService goldNewService = Get.put(GoldService());
  }
}