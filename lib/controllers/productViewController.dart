import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductViewController extends GetxController {
  List<String> listOfMenu = [
    'Toute',
    'Crustacés',
    'Poissons nobles',
    'Cephalopodes',
    'Coquillages',
    'Poissons bleus',
    'Packs frais',
    'Packs congelés',
    'Packs mixtes'
  ].obs;
  RxInt selectedIndexOfMenuList = 0.obs;

  void changeMenuIndex(index) {
    selectedIndexOfMenuList.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
