import 'package:flutter/material.dart';
import 'package:flutter_auth/views/components/categorycard.dart';
import 'package:flutter_auth/views/components/sidemenubar.dart';
import 'package:flutter_auth/views/widgets/villePopup.dart';
import 'package:flutter_auth/views_model/restaurantController.dart';
import 'package:flutter_auth/views_model/villeController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  final session = GetStorage();
  RestaurantController restaurantController = Get.find();
  VilleController villeController = Get.find();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _homeScreenScaffold =
        GlobalKey<ScaffoldState>();
    if (session.read("villeSelected") == false) {
      Future.delayed(
          Duration.zero,
          () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => VillePopup()));
    }
    return Obx(
      () => Scaffold(
          key: _homeScreenScaffold,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  _homeScreenScaffold.currentState.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).primaryColor,
                )),
            primary: false,
            title: TextField(
                onChanged: (value) {
                  restaurantController.filterRestaurants(value);
                },
                decoration: InputDecoration(
                    hintText: " Search",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey))),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart, color: darkBlueColor),
                onPressed: () => showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => VillePopup()),
              ),
            ],
          ),
          drawer: Drawer(
            child: SideMenuBar(),
          ),
          body: Column(
            children: [
              Expanded(child: _Categories()),
            ],
          )),
    );
  }

  Widget _Categories() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: restaurantController.filteredRestaurants.length <= 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount:
                          restaurantController.filteredRestaurants.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return CategoryCard(
                            restaurant:
                                restaurantController.filteredRestaurants[index],
                            onCardClick: () {});
                      },
                    ),
                  ),
                ],
              ));
  }
}
