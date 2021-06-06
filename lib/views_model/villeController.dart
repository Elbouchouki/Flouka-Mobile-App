import 'package:flutter_auth/models/villeModel.dart';
import 'package:flutter_auth/services/apiFlouka.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class VilleController extends GetxController {
  final session = GetStorage();
  // ignore: deprecated_member_use
  var villes = List<Ville>().obs;
  var selectedVille = Ville().obs;

  void changeSelectedVille(id) {
    selectedVille.value = villes.firstWhere((v) => v.id == int.parse(id));
    _saveSession(selectedVille.value);
  }

  void _saveSession(Ville ville) {
    session.write("villeSelected", true);
    session.write("villeId", ville.id);
    session.write("villeName", ville.nom);
  }

  @override
  void onInit() {
    if (session.read("villeSelected") == true) {
      selectedVille.value.id = session.read("villeId");
      selectedVille.value.nom = session.read("villeName");
    }
    ApiFlouka.getVilles().then((result) {
      villes.value =
          result.where((element) => element.livraison == true).toList();
    });
    super.onInit();
  }
}
