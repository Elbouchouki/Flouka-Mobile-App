import 'package:flutter/material.dart';
import 'package:flutter_auth/components/liste_categories.dart';
import 'package:flutter_auth/components/liste_items.dart';
import 'package:flutter_auth/components/liste_tous_produits.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          Text(
            'Catégories',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          CategoryList(),
          ItemList(),
          SizedBox(height: size.height * 0.03),
          Text(
            'Tous les produits',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          AllProducts(),
        ],
      ),
    );
  }
}
