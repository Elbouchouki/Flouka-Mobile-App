import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/confirmation_model.dart';
import 'package:flutter_auth/Screens/login_screen.dart';
import 'package:flutter_auth/Screens/signup_screen.dart';
import 'package:get/get.dart';
import 'Screens/home_screen.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/home", page: () => HomeScreen()),
        GetPage(name: "/login", page: () => LoginScreen()),
        GetPage(name: "/signup", page: () => SignUpScreen()),
        GetPage(name: "/confirmation", page: () => Confirmation()),
      ],
    ));
