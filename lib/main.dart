import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/Login/login_screen.dart';
import 'Screens/Products/allRestaurants.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    ));
