import 'package:dio/dio.dart';
import 'package:flutter_auth/models/restaurantModel.dart';
import 'package:flutter_auth/models/villeModel.dart';
import 'package:flutter_auth/models/zoneModel.dart';
import 'package:get/get.dart';

class ApiFlouka {
  static const String restaurants =
      'https://random-data-api.com/api/restaurant/random_restaurant?size=10';
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
    // try {
    //   final response = await Dio().get(villes);
    //   return (response.data as List).map((e) => Ville.fromJson(e)).toList();
    // } catch (ex) {
    //   return List<Ville>();
    // }
    return ([
      {
        "id": 2,
        "nom": "Dar Bouazza",
        "livraison": false,
        "region_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 3,
        "nom": "Deroua \/ Nouaceur",
        "livraison": false,
        "region_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 4,
        "nom": "Bouskoura",
        "livraison": false,
        "region_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 6,
        "nom": "Mohammedia",
        "livraison": false,
        "region_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 7,
        "nom": "Rabat",
        "livraison": false,
        "region_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 8,
        "nom": "T\u00e9mara",
        "livraison": false,
        "region_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 5,
        "nom": "Marrakech",
        "livraison": true,
        "region_id": 2,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T14:53:14.000000Z"
      },
      {
        "id": 1,
        "nom": "Casablanca",
        "livraison": true,
        "region_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T15:31:24.000000Z"
      }
    ]).map((e) => Ville.fromJson(e)).toList();
  }

  static Future<List<Zone>> getZones() async {
    // try {
    //   final response = await Dio().get(zones);
    //   return (response.data as List).map((e) => Zone.fromJson(e)).toList();
    // } catch (ex) {
    //   return List<Zone>();
    // }
    return ([
      {
        "id": 1,
        "nom": "5 Mars",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 2,
        "nom": "Aïn Borja",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 3,
        "nom": "Aïn Chock",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 4,
        "nom": "Aïn Diab",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 5,
        "nom": "Aïn Sebaâ",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 6,
        "nom": "Al Batha",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 7,
        "nom": "Al Fida",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 8,
        "nom": "Al Madina Aljadida",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 9,
        "nom": "Al Qods",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 10,
        "nom": "Alsace Lorraine",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 11,
        "nom": "Anfa",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 12,
        "nom": "Autre secteur",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 13,
        "nom": "Beauséjour",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 14,
        "nom": "Belvédère",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 15,
        "nom": "Ben Ejdia",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 16,
        "nom": "Ben M'sick",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 17,
        "nom": "Benmsik",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 18,
        "nom": "Bernoussi",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 19,
        "nom": "Bourgogne",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 20,
        "nom": "Bournazil",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 21,
        "nom": "C.I.L",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 22,
        "nom": "Californie",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 23,
        "nom": "Centre Ville",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 24,
        "nom": "Derb Ghallef",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 25,
        "nom": "Derb Omar",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 26,
        "nom": "El Manar El Hank",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 27,
        "nom": "Ferme Bretone",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 28,
        "nom": "Florida",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 29,
        "nom": "Fonciere",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 30,
        "nom": "Gauthier",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 31,
        "nom": "Habous",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 32,
        "nom": "Hay Al Amal",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 33,
        "nom": "Hay Albaraka",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 34,
        "nom": "Hay Alfalah",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 35,
        "nom": "Hay Almassira 1",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 36,
        "nom": "Hay Almassira 5",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 37,
        "nom": "Hay Almassira 4",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 38,
        "nom": "Hay Hana",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 39,
        "nom": "Hay Hassani",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 40,
        "nom": "Hay Inara",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 41,
        "nom": "Hay Laymouna",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 42,
        "nom": "Hay M'barka",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 43,
        "nom": "Hay Mansour",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 44,
        "nom": "Hay Mohammadi",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 45,
        "nom": "Hay Moulay Rachid",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 46,
        "nom": "Hay Moulay Rachid 1",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 47,
        "nom": "Hay Moulay Rachid 5",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 48,
        "nom": "Hay Moulay Rachid 4",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 49,
        "nom": "Hay Moulay Rachid 4",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 50,
        "nom": "Hay Moulay Rachid 5",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 51,
        "nom": "Hay Moulay Rachid 6",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 52,
        "nom": "Hay Rajaa",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 53,
        "nom": "Hay Sadri",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 54,
        "nom": "Hay Tarik",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 55,
        "nom": "Hermitage",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 56,
        "nom": "Hippodrome",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 57,
        "nom": "Hôrloge",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 58,
        "nom": "Industriel Nord",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 59,
        "nom": "La Gare",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 60,
        "nom": "La Gironde",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 61,
        "nom": "Laimoune",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 62,
        "nom": "Les Camps",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 63,
        "nom": "Les Cretes",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 64,
        "nom": "Les Princesses",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 65,
        "nom": "Lissasfa",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 66,
        "nom": "Longchamps",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 67,
        "nom": "Lusitania",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 68,
        "nom": "Maarif",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 69,
        "nom": "Mers Sultan",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 70,
        "nom": "Oasis",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 71,
        "nom": "Oulfa",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 72,
        "nom": "Palmier",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 73,
        "nom": "Parc",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 74,
        "nom": "Polo",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 75,
        "nom": "Quartier des Hôpitaux",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 76,
        "nom": "Racine",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 77,
        "nom": "Riviera",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 78,
        "nom": "Roches Noires",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 79,
        "nom": "Route d'Azemmour",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 80,
        "nom": "Route d'El Jadida",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 81,
        "nom": "Sbata",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 82,
        "nom": "Sidi Belyout",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 83,
        "nom": "Sidi Bernoussi",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 84,
        "nom": "Sidi Maarouf",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 85,
        "nom": "Sidi Moumen",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 86,
        "nom": "Sidi Othmane",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 87,
        "nom": "Sour Jdid",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 88,
        "nom": "Tantonville",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 89,
        "nom": "Triangle d'Or",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 90,
        "nom": "Val d'Anfa",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 91,
        "nom": "Val Fleuri",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 92,
        "nom": "Zone Industrielle",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 93,
        "nom": "Zone Industrielle Moulay Rachid",
        "ville_id": 1,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 94,
        "nom": "Afaq",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 95,
        "nom": "Agdal",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 96,
        "nom": "Ain Mezouar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 97,
        "nom": "Akioud",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 98,
        "nom": "Allal El Fassi",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 99,
        "nom": "Amelkis",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 100,
        "nom": "Amerchich",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 101,
        "nom": "Ancienne Médina",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 102,
        "nom": "Annakhil",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 103,
        "nom": "Arset Ben Chebli",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 104,
        "nom": "Arset El Houta",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 105,
        "nom": "Arset El Maach",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 106,
        "nom": "Arset Ihiri",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 107,
        "nom": "Arset Moulay Bouaazza",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 215,
        "nom": "Al Qods",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 108,
        "nom": "Arset Moulay Moussa",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 109,
        "nom": "Assif",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 110,
        "nom": "Assouel",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 111,
        "nom": "Autre secteur",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 112,
        "nom": "Av Abdelkrim El Khattabi",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 113,
        "nom": "Av Mohammed V",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 114,
        "nom": "Av Mohammed VI",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 115,
        "nom": "Azli",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 116,
        "nom": "Azzouzia",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 117,
        "nom": "Bab Atlas",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 118,
        "nom": "Bab Aylan",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 119,
        "nom": "Bab Doukkala",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 120,
        "nom": "Bab El Khemis",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 121,
        "nom": "Bab Ghmat",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 122,
        "nom": "Bab Ighli",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 123,
        "nom": "Bab Lhmar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 124,
        "nom": "Bd Moulay Abdellah",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 125,
        "nom": "Ben Saleh",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 126,
        "nom": "Berrima",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 127,
        "nom": "Bin Lkchali",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 128,
        "nom": "Bouaakkaz",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 129,
        "nom": "Centre Ville",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 130,
        "nom": "Daoudiate",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 131,
        "nom": "Derb Chtouka",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 132,
        "nom": "El Ghoul",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 133,
        "nom": "El Moukef",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 134,
        "nom": "Es Saada",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 135,
        "nom": "Essebtiyen",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 136,
        "nom": "Fassi",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 137,
        "nom": "Guéliz",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 138,
        "nom": "Harti",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 139,
        "nom": "Hay Al Bahja",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 140,
        "nom": "Hay Al Haouz",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 141,
        "nom": "Hay Al Hassani",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 142,
        "nom": "Hay Al Massar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 143,
        "nom": "Hay Andalous",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 144,
        "nom": "Hay Annahda",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 145,
        "nom": "Hay Charaf",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 146,
        "nom": "Hay Izdihar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 147,
        "nom": "Hay Lalla Haya",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 148,
        "nom": "Hay Massira",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 149,
        "nom": "Hay Targa",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 150,
        "nom": "Hivernage",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 151,
        "nom": "Hôpital Militaire",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 152,
        "nom": "Inara",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 153,
        "nom": "Issil",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 154,
        "nom": "Iziki",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 155,
        "nom": "Jawhar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 156,
        "nom": "Jemaa El Fna",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 157,
        "nom": "Jnan ben chagra",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 158,
        "nom": "Jnane Laafia",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 159,
        "nom": "Kaa El Machraa",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 160,
        "nom": "Kaat Ben Nahid",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 161,
        "nom": "Kadissia",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 162,
        "nom": "Kbour Chou",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 163,
        "nom": "Kechich",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 164,
        "nom": "Kennaria",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 165,
        "nom": "Ksibat Nhas",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 166,
        "nom": "Lac Takerkoust",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 167,
        "nom": "Les Portes de Marrakech",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 168,
        "nom": "M'Hamid",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 169,
        "nom": "Mabrouka",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 170,
        "nom": "Majorelle",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 171,
        "nom": "Masmoudi",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 172,
        "nom": "Massar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 173,
        "nom": "Massira",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 174,
        "nom": "Massira 1",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 175,
        "nom": "Massira 5",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 176,
        "nom": "Massira 4",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 177,
        "nom": "Michouar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 178,
        "nom": "Mouassine",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 179,
        "nom": "Moulay Lyazid",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 180,
        "nom": "Oued Ourika",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 181,
        "nom": "Oued Tensift",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 182,
        "nom": "Oulad Said",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 183,
        "nom": "Palmeraie",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 184,
        "nom": "Rahba Kedima",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 185,
        "nom": "Riad Zitoun",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 186,
        "nom": "Rmila",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 187,
        "nom": "Rouidat",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 188,
        "nom": "Route d'Agadir - Essaouira",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 189,
        "nom": "Route d'Amezmiz",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 190,
        "nom": "Route d'Ourika",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 191,
        "nom": "Route de Casablanca",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 192,
        "nom": "Route de Fès",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 193,
        "nom": "Route de Lalla Takerkoust",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 194,
        "nom": "Route de Ouarzazate",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 195,
        "nom": "Route de Safi",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 196,
        "nom": "Route de Sidi A. Ghiat",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 197,
        "nom": "Route de Tahanaoute",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 198,
        "nom": "Route de Tamansourt",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 199,
        "nom": "Sakar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 200,
        "nom": "Semlalia",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 201,
        "nom": "Sidi Abbad",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 202,
        "nom": "Sidi Abdellah Ghiat",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 203,
        "nom": "Sidi Ben Slimane El Jazouli",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 204,
        "nom": "Sidi Bou Amar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 205,
        "nom": "Sidi Ghanem",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 206,
        "nom": "Sidi Mansour",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 207,
        "nom": "Sidi Mimoun",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 208,
        "nom": "Sidi Youssef Ben Ali",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 209,
        "nom": "Sofia",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 210,
        "nom": "Targa",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 211,
        "nom": "Victor Hugo",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 212,
        "nom": "Zaouia Sidi Ghalem",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 213,
        "nom": "Zaouiat Lahdar",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 214,
        "nom": "Zone Industrielle Sidi Ghanem",
        "ville_id": 5,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 216,
        "nom": "Amal",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 217,
        "nom": "Autre secteur",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 218,
        "nom": "Belle Vue",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 219,
        "nom": "Centre Ville",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 220,
        "nom": "Corniche",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 221,
        "nom": "Derb Bouchman",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 222,
        "nom": "Derb Jamila",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 223,
        "nom": "Derb Lfath",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 224,
        "nom": "Derb Marrakech",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 225,
        "nom": "Derb Meknes",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 226,
        "nom": "Derb Rbat",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 227,
        "nom": "Diour Dokala",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 228,
        "nom": "Diour Lakrai",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 229,
        "nom": "Diour Nicolas",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 230,
        "nom": "El Alia",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 231,
        "nom": "El Bradaa",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 232,
        "nom": "El Kasbah",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 233,
        "nom": "Hassania 1",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 234,
        "nom": "Hassania 5",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 235,
        "nom": "Hassania 3",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 236,
        "nom": "Hay Al Amal",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 237,
        "nom": "Hay Al Falah",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 238,
        "nom": "Hay Al Horria",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 239,
        "nom": "Hay Al Wahda",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 240,
        "nom": "Hay Annasr",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 241,
        "nom": "Hay Chabab",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 242,
        "nom": "Hay Essalama",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 243,
        "nom": "Hay Mesk Lil",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 244,
        "nom": "Hay saada",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 245,
        "nom": "Hay Salam",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 246,
        "nom": "Kasbah",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 247,
        "nom": "L'habitat",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 248,
        "nom": "La Colline",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 249,
        "nom": "La Siesta",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 250,
        "nom": "Les Cretes",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 251,
        "nom": "Mimosas",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 252,
        "nom": "Monica",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 253,
        "nom": "Nassim",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 254,
        "nom": "Partie Est",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 255,
        "nom": "Port",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 256,
        "nom": "Quartier du Parc",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 257,
        "nom": "Quartier Du Soleil",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 258,
        "nom": "Rachidia",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 259,
        "nom": "Riad 1",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 260,
        "nom": "Riad 5",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 261,
        "nom": "Tenoukchet",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:13.000000Z",
        "updated_at": "2021-06-03T13:34:13.000000Z"
      },
      {
        "id": 262,
        "nom": "Wafa",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 263,
        "nom": "Yassmine",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 264,
        "nom": "Zone industrielle",
        "ville_id": 3,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 265,
        "nom": "Aakkari",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 266,
        "nom": "Abi Ragrag",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 267,
        "nom": "Agdal",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 268,
        "nom": "Al Irfane",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 269,
        "nom": "Autre secteur",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 270,
        "nom": "Aviation",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 271,
        "nom": "Aviation - Mabella",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 272,
        "nom": "Diour Jamaa",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 273,
        "nom": "Douar el Hajja",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 274,
        "nom": "El Youssoufia",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 275,
        "nom": "Guich Oudaya",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 276,
        "nom": "Hassan",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 277,
        "nom": "Haut Agdal",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 278,
        "nom": "Hay Al Farah",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 279,
        "nom": "Hay Arrachad",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 280,
        "nom": "Hay el Fath",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 281,
        "nom": "Hay Nahda",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 282,
        "nom": "Hay Riad",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 283,
        "nom": "Les Ambassadeurs",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 284,
        "nom": "Les Orangers",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 285,
        "nom": "Les Oudayas",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 286,
        "nom": "Mabella",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 287,
        "nom": "Massira",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 288,
        "nom": "Mechouar",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 289,
        "nom": "Médina de Rabat",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 290,
        "nom": "Quartier de l'Océan",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 291,
        "nom": "Riyad",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 292,
        "nom": "Riyad Extension",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 293,
        "nom": "Souissi",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 294,
        "nom": "Taqaddoum",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 295,
        "nom": "Yacoub El Mansour",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      },
      {
        "id": 296,
        "nom": "Youssoufia",
        "ville_id": 4,
        "created_at": "2021-06-03T13:34:14.000000Z",
        "updated_at": "2021-06-03T13:34:14.000000Z"
      }
    ]).map((e) => Zone.fromJson(e)).toList();
  }
}
