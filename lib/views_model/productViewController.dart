import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductViewController extends GetxController {
  List<Widget> list = [
    Tab(icon: Icon(Icons.card_travel)),
    Tab(icon: Icon(Icons.add_shopping_cart)),
  ];

  TabController tabController;

  @override
  void onInit() {
    tabController.index = 0;
    super.onInit();
  }
}
