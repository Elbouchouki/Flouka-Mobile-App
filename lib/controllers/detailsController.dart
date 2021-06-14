import 'package:flutter_auth/controllers/stockController.dart';
import 'package:flutter_auth/models/stock.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  StockController stockController = Get.find();
  var product = Stock().obs;
  var listProducts = List<Stock>().obs;
  void changeDetailsState(Stock p) {
    product.value = p;
    listProducts.value = stockController.currentStock.value
        .where((element) => element.produitId == p.produitId)
        .toList();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
