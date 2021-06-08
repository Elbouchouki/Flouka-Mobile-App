import 'package:flutter/material.dart';
import 'package:flutter_auth/views/components/categorycard.dart';
import 'package:flutter_auth/views/widgets/sidemenubar.dart';
import 'package:flutter_auth/views/widgets/customAppBar.dart';
import 'package:flutter_auth/views/widgets/villePopup.dart';
import 'package:flutter_auth/views_model/restaurantController.dart';
import 'package:flutter_auth/views_model/villeController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final session = GetStorage();
  RestaurantController restaurantController = Get.find();
  VilleController villeController = Get.find();
  @override
  Widget build(BuildContext context) {
    if (session.read("villeSelected") == false) {
      Future.delayed(
          Duration.zero,
          () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => VillePopup()));
    }
    return Scaffold(
      key: homeScreenScaffold,
      appBar: CustomAppBar(),
      drawer: Drawer(
        child: SideMenuBar(),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1535591273668-578e31182c4f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjM2NTI5fQ',
                        ),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.3),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Flouka",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Nos installations professionnelles permettent d'assurer le respect de la chaîne du froid. Les marchandises sont ainsi transportées dans le respect le plus strict des règles sanitaires à travers toutes les villes du royaume dans des délais maîtrisés.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Categories"),
              Obx(
                () => Expanded(
                  child: _Categories(),
                ),
              ),
            ],
          ),
        ),
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
                              Get.toNamed("/products");
                            });
                      },
                    ),
                  ),
                ],
              ));
  }
}
