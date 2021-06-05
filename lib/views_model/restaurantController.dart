import 'package:flutter_auth/models/restaurantModel.dart';
import 'package:flutter_auth/services/apiFlouka.dart';
import 'package:get/get.dart';

class RestaurantController extends GetxController {
  // ignore: deprecated_member_use
  var restaurants = List<Restaurant>().obs;
  // ignore: deprecated_member_use
  var filteredRestaurants = List<Restaurant>().obs;

  void filterRestaurants(v) {
    filteredRestaurants.value = restaurants
        .where((item) => item.name.toLowerCase().contains(v.toLowerCase()))
        .toList();
  }

  @override
  void onInit() {
    ApiFlouka.getRestaurants().then((result) {
      restaurants.value = filteredRestaurants.value = result;
    });
    super.onInit();
  }

  void printData() => (print(restaurants.length));
}
