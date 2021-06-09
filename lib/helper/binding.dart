import 'package:flutter_auth/views_model/productViewController.dart';
import 'package:flutter_auth/views_model/restaurantController.dart';
import 'package:flutter_auth/views_model/villeController.dart';
import 'package:flutter_auth/views_model/zoneController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    final _session = GetStorage();
    _session.writeIfNull("villeSelected", false);
    _session.writeIfNull("zoneSelected", false);
    Get.lazyPut<RestaurantController>(() => RestaurantController());
    Get.lazyPut<VilleController>(() => VilleController());
    Get.lazyPut<ZoneController>(() => ZoneController());
    Get.lazyPut<ProductViewController>(() => ProductViewController());
  }
}
