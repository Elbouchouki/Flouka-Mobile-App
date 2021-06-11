import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_auth/models/product.dart';
import 'package:get/get.dart';
import 'dart:convert';

class CartController extends GetxController {
  final _session = GetStorage();

  // ignore: deprecated_member_use
  var _cartList = List<Product>().obs;
  var total = 0.0.obs;
  List<Product> get cartList => _cartList.value;
  void calculateTotal() {
    double _t = 0.0;
    _cartList.value.forEach((product) {
      _t += product.price;
    });
    total.value = _t;
  }

  @override
  void onInit() {
    _cartList.value =
        Product.productFromJson(_session.read("cartList").toString());
    calculateTotal();
    super.onInit();
  }

  void addProduct(Product product) {
    _cartList.add(product);
    calculateTotal();

    _sessionSave();
  }

  void deleteProduct(Product product) {
    _cartList.remove(product);
    calculateTotal();

    _sessionSave();
  }

  void deleteProductByIndex(int index) {
    _cartList.removeAt(index);
    calculateTotal();

    // _cartList.value.removeAt(index);
    _sessionSave();
  }

  void _sessionSave() {
    _session.write("cartList", Product.productToJson(_cartList.value));
  }
}
