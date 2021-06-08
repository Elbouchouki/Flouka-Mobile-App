import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/views/components/categorycard.dart';
import 'package:flutter_auth/views/widgets/cartegories.dart';
import 'package:flutter_auth/views/widgets/hero.dart';
import 'package:flutter_auth/views/widgets/sidemenubar.dart';
import 'package:flutter_auth/views/widgets/customAppBar.dart';
import 'package:flutter_auth/views/widgets/villePopup.dart';
import 'package:flutter_auth/views_model/restaurantController.dart';
import 'package:flutter_auth/views_model/villeController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_auth/constants.dart';

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
              SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Carousel(
                    images: [
                      CustomHero(
                        image: "images/fish3.jpg",
                        text: "FLOUKA",
                        desc: "blabla bla qdsdq qsd qde fqs dqs d",
                      ),
                      CustomHero(
                        image: "images/fish5.jpg",
                        text: "FLOUKA",
                        desc: "blabla bla qdsdq qsd qde fqs dqs d",
                      ),
                      CustomHero(
                        image: "images/fish4.jpg",
                        text: "FLOUKA",
                        desc: "blabla bla qdsdq qsd qde fqs dqs d",
                      ),
                      CustomHero(
                        image: "images/fish1.jpeg",
                        text: "FLOUKA",
                        desc: "blabla bla qdsdq qsd qde fqs dqs d",
                      ),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    indicatorBgPadding: 5.0,
                    autoplayDuration: const Duration(seconds: 3),
                    dotBgColor: Colors.transparent,
                    moveIndicatorFromBottom: 180.0,
                    animationCurve: Curves.fastLinearToSlowEaseIn,
                    animationDuration: const Duration(seconds: 2),
                    boxFit: BoxFit.cover,
                  )),
              SizedBox(
                height: 20,
              ),
              Categories(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
