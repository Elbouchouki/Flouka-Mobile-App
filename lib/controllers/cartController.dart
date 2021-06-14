import 'package:flutter/material.dart';
import 'package:flutter_auth/models/produit.dart';
import 'package:flutter_auth/models/stock.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'dart:convert';

class CartController extends GetxController {
  final _session = GetStorage();

  // ignore: deprecated_member_use
  var _cartList = List<Stock>().obs;
  var total = 0.0.obs;
  List<Stock> get cartList => _cartList.value;
  void calculateTotal() {}

  @override
  void onInit() {
    // _cartList.value =
    //     Produit.fromJson(_session.read("cartList").toString());
    // calculateTotal();
    super.onInit();
  }

  void addProduct(Produit product) {
    // _cartList.add(product);
    // calculateTotal();

    // _sessionSave();
  }

  void deleteProduct(Produit product) {
    // _cartList.remove(product);
    // calculateTotal();

    // _sessionSave();
  }

  void deleteProductByIndex(int index) {
    // _cartList.removeAt(index);
    // calculateTotal();

    // // _cartList.value.removeAt(index);
    // _sessionSave();
  }

  void _sessionSave() {
    // _session.write("cartList", Produit.productToJson(_cartList.value));
  }
}
