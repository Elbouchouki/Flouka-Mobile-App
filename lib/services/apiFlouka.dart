import 'package:flutter_auth/models/restaurantModel.dart';
import 'package:http/http.dart' as http;

class ApiFlouka {
  static const String url =
      'https://random-data-api.com/api/restaurant/random_restaurant?size=3';
  static Future<List<Restaurant>> getRestaurants() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<Restaurant> restaurants =
            Restaurant.restaurantFromJson(response.body);
        return restaurants;
      }
      // ignore: deprecated_member_use
      return List<Restaurant>();
    } catch (e) {
      // ignore: deprecated_member_use
      return List<Restaurant>();
    }
  }
}
