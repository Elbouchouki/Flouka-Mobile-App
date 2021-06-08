import 'package:flutter/material.dart';

const Color lightBlueColor = Color(0xFF54A0FF);
const Color darkBlueColor = Color(0xFF0046CE);

const Color menuColor = Color(0xFF6F35A5);
const Color menuHoverColor = Color(0xB3FFFFFF);
const Color drawerColor = lightBlueColor;
const List<Color> authLinarGrad = [Color(0xFFFFFFFF), Color(0xFFFFFFFF)];
final GlobalKey<ScaffoldState> homeScreenScaffold = GlobalKey<ScaffoldState>();
const darkGray = Color(0xFF4A4B4D);
const lightGray = Color(0xFF7C7D7E);

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
