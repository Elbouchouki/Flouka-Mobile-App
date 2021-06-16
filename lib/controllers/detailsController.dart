import 'package:collection/collection.dart';
import 'package:flutter_auth/controllers/cartController.dart';
import 'package:flutter_auth/controllers/stockController.dart';
import 'package:flutter_auth/models/cart.dart';
import 'package:flutter_auth/models/stock.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  StockController stockController = Get.find();
  CartController cartController = Get.find();
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
      if (cartController.cartList.length != 0) {
        cartController.cartList.forEach((cart) {
          if (value[0].categorieId.toString() +
                  value[0].produitId.toString() +
                  value[0].trancheId ==
              cart.produits[0].categorieId.toString() +
                  cart.produits[0].produitId.toString() +
                  cart.produits[0].trancheId) {
            listProducts.value.add(value);
            /* ----------------------------------- qsd ---------------------------------- */
            qte.value.add([0, cart.qte]);
          }
        });
      } else {
        listProducts.value.add(value);
        qte.value.add([0, sum(value)]);
      }
    });
  }

  addToCart() {
    for (var i = 0; i < listProducts.length; i++) {
      if (qte.value[i][0] > 0) {
        cartController.addProduct(Cart(
            id: listProducts.value[i][0].categorieId.toString() +
                listProducts.value[i][0].produitId.toString() +
                listProducts.value[i][0].lotNum,
            produits: listProducts.value[i],
            qte: qte.value[i][0],
            totalPrice: total.value));
      }
    }
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
      if (double.parse(listProducts.value[i][0].poids) != 0) {
        for (var j = 0; j < qte[i][0]; j++) {
          // print(double.parse(listProducts.value[i][j].poids));
          // print(double.parse(listProducts.value[i][j].poids) *
          //     double.parse(listProducts.value[i][j].prixN));
          t += double.parse(listProducts.value[i][j].poids) *
              double.parse(listProducts.value[i][j].prixN);
        }
        continue;
      }
      t += double.parse(listProducts.value[i][0].prixN) * qte.value[i][0];
    }
    total.value = t;
  }

  _commitChange() {
    qte.refresh();
    calculeTotal();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
