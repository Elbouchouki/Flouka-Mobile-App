import 'package:dio/dio.dart';
import 'package:flutter_auth/models/restaurantModel.dart';
import 'package:flutter_auth/models/villeModel.dart';
import 'package:flutter_auth/models/zoneModel.dart';
import 'package:get/get.dart';

class ApiFlouka {
  static const String restaurants =
      'https://random-data-api.com/api/restaurant/random_restaurant?size=3';
  static const String villes = 'https://profondesolution.online/api/villes';
  static const String zones = 'https://profondesolution.online/api/zones';

  static Future<List<Restaurant>> getRestaurants() async {
    try {
      final response = await Dio().get(restaurants);
      return (response.data as List)
          .map((e) => Restaurant.fromJson(e))
          .toList();
    } catch (ex) {
      return List<Restaurant>();
    }
  }

  static Future<List<Ville>> getVilles() async {
    try {
      final response = await Dio().get(villes);
      return (response.data as List).map((e) => Ville.fromJson(e)).toList();
    } catch (ex) {
      return List<Ville>();
    }
  }

  static Future<List<Zone>> getZones() async {
    try {
      final response = await Dio().get(zones);
      return (response.data as List).map((e) => Zone.fromJson(e)).toList();
    } catch (ex) {
      return List<Zone>();
    }
  }
}
