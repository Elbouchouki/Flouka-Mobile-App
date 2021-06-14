import 'package:flutter_auth/models/categorie.dart';
import 'package:flutter_auth/models/stock.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  var product = Stock().obs;
  var categorie = Categorie().obs;
  void changeDetailsState(Stock p) {
    product.value = p;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
