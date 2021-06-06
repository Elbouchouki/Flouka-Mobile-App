import 'package:flutter/material.dart';
import 'package:flutter_auth/helper/binding.dart';
import 'package:flutter_auth/views/confirmation_model.dart';
import 'package:flutter_auth/views/home_screen.dart';
import 'package:flutter_auth/views/login_screen.dart';
import 'package:flutter_auth/views/signup_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    initialBinding: HomeBinding(),
    getPages: [
      GetPage(name: "/", page: () => HomeScreen()),
      GetPage(name: "/home", page: () => HomeScreen()),
      GetPage(name: "/login", page: () => LoginScreen()),
      GetPage(name: "/signup", page: () => SignUpScreen()),
      GetPage(name: "/confirmation", page: () => Confirmation()),
    ],
  ));
}
