import 'package:flutter_auth/models/restaurantModel.dart';
import 'package:flutter_auth/models/villeModel.dart';
import 'package:flutter_auth/models/zoneModel.dart';
import 'package:http/http.dart' as http;

class ApiFlouka {
  static const String restaurants =
      'https://random-data-api.com/api/restaurant/random_restaurant?size=3';
  static const String villes = 'https://profondesolution.online/api/villes';
  static const String zones = 'https://profondesolution.online/api/zones';

  static Future<List<Restaurant>> getRestaurants() async {
    try {
      final response = await http.get(Uri.parse(restaurants));
      if (response.statusCode == 200) {
        final List<Restaurant> listRestaurants =
            Restaurant.restaurantFromJson(response.body);
        return listRestaurants;
      }
      // ignore: deprecated_member_use
      return List<Restaurant>();
    } catch (e) {
      // ignore: deprecated_member_use
      return List<Restaurant>();
    }
  }

  static Future<List<Ville>> getVilles() async {
    try {
      final response = await http.get(Uri.parse(villes));
      if (response.statusCode == 200) {
        final List<Ville> listVilles = Ville.villeFromJson(response.body);
        return listVilles;
      }
      // ignore: deprecated_member_use
      return List<Ville>();
    } catch (e) {
      // ignore: deprecated_member_use
      return List<Ville>();
    }
  }

  static Future<List<Zone>> getZones() async {
    try {
      final response = await http.get(Uri.parse(zones));
      if (response.statusCode == 200) {
        final List<Zone> listZones = Zone.zoneFromJson(response.body);
        return listZones;
      }
      // ignore: deprecated_member_use
      return List<Zone>();
    } catch (e) {
      // ignore: deprecated_member_use
      return List<Zone>();
    }
  }
}
