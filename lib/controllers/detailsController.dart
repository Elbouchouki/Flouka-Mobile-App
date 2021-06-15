import 'package:collection/collection.dart';
import 'package:flutter_auth/controllers/stockController.dart';
import 'package:flutter_auth/models/stock.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  StockController stockController = Get.find();
  var listProducts = List<List<Stock>>().obs;
  var qte = List<List<int>>().obs;
  var total = 0.0.obs;
  void changeDetailsState(Stock p) {
    listProducts.value.clear();
    qte.value.clear();
    groupBy(
        stockController.currentStock.value
            .where((element) => element.produitId == p.produitId)
            .toList(),
        (s) => s.trancheId).forEach((key, value) {
      listProducts.value.add(value);
      qte.value.add([0, sum(value)]);
    });
    print(qte.value);
  }

  int sum(List<Stock> produits) {
    int s = 0;
    produits.forEach((element) {
      s += int.parse(element.qteRestante);
    });
    return s;
  }

  incrementQte(int index) {
    int pas = int.parse(listProducts.value[index][0].pas);
    if ((qte.value[index][0] + pas) >= qte.value[index][1]) {
      qte.value[index][0] = qte.value[index][1];
      _commitChange();
      return;
    }
    qte.value[index][0] += pas;
    _commitChange();
  }

  decrementQte(int index) {
    int pas = int.parse(listProducts.value[index][0].pas);
    if (qte.value[index][0] - pas < 0) {
      qte.value[index][0] = 0;
      _commitChange();
      return;
    }
    if (qte.value[index][0] % pas != 0) {
      while (qte.value[index][0] % pas != 0) {
        qte.value[index][0] -= 1;
      }
      _commitChange();
      return;
    }
    qte.value[index][0] -= pas;
    _commitChange();
  }

  calculeTotal() {
    var t = 0.0;
    for (var i = 0; i < listProducts.length; i++) {
      t += double.parse(listProducts.value[i][0].prixN) * qte.value[i][0];
    }
    total.value = t;
  }

  _commitChange() {
    qte.refresh();
    calculeTotal();
  }

  addToCart() {
    for (var i = 0; i < listProducts.length; i++) {
      listProducts.value[i];
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
