import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/components/body.dart';
import 'package:flutter_auth/components/drawer.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/search_field.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade200,
        elevation: 10.0,
        brightness: Brightness.dark,
        automaticallyImplyLeading: false,
        title: Container(
          width: 120,

        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ),
        ],
      ), //<Widget>[]
      drawer:NavigationDrawerWidget(),
      body: Body(),);
  }
}

