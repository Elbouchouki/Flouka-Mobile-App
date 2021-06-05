import 'package:flutter_auth/views_model/restaurantController.dart';
import 'package:flutter_auth/views_model/villeController.dart';
import 'package:flutter_auth/views_model/zoneController.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestaurantController>(() => RestaurantController());
    Get.lazyPut<VilleController>(() => VilleController());
    Get.lazyPut<ZoneController>(() => ZoneController());
  }
}
