import 'package:collection/collection.dart';
import 'package:flutter_auth/models/produit.dart';
import 'package:flutter_auth/models/stock.dart';
import 'package:flutter_auth/services/apiFlouka.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StockController extends GetxController {
  final _session = GetStorage();
  // ignore: deprecated_member_use
  var stock = List<Stock>().obs;
  var currentStock = List<Stock>().obs;
  var products = List<Stock>().obs;
  void changeStockStates(int categorieId) {
    currentStock.value =
        stock.where((element) => (element.categorieId == categorieId)).toList();
    changeProductsState();
  }

  void changeProductsState() {
    products.value.clear();
    groupBy(currentStock.value, (s) => s.id).forEach((key, value) {
      products.value.add(value[0]);
    });
  }

  Produit getProduct(int id) {
    return currentStock.value
        .where((element) => element.produitId == id)
        .toList()[0]
        .stock
        .produit;
  }

  void fetchData() async {
    await ApiFlouka.getStock(5).then((result) {
      stock.value = result
          .where((element) =>
              (element.active == true && element.stock.produit.active == true))
          .toList();
    });
  }

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }
}