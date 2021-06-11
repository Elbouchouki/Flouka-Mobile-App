import 'package:flutter_auth/models/produit.dart';
import 'package:flutter_auth/models/qualite.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  var product = Produit().obs;
  var categorie = Qualite().obs;
  void changeDetailsState(Produit p, Qualite q) {
    product.value = p;
    categorie.value = q;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
