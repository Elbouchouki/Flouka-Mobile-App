import 'package:flutter/material.dart';
import 'package:flutter_auth/views/components/categorycard.dart';
import 'package:flutter_auth/views/components/sidemenubar.dart';
import 'package:flutter_auth/views/widgets/villePopup.dart';
import 'package:flutter_auth/views_model/restaurantController.dart';
import 'package:get/get.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  RestaurantController restaurantController = Get.find();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _homeScreenScaffold =
        GlobalKey<ScaffoldState>();
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
        body: _Categories(),
      ),
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
                            onCardClick: () {
                              print(restaurantController
                                  .filteredRestaurants.length);
                            });
                      },
                    ),
                  ),
                ],
              ));
  }
}
