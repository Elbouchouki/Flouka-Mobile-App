import 'package:flutter_auth/models/villeModel.dart';
import 'package:flutter_auth/services/apiFlouka.dart';
import 'package:get/get.dart';

class VilleController extends GetxController {
  // ignore: deprecated_member_use
  var villes = List<Ville>().obs;
  var selectedVille = Ville().obs;

  @override
  void onInit() {
    ApiFlouka.getVilles().then((result) {
      villes.value = result;
    });
    super.onInit();
  }
}
