import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/views/widgets/categorie_card.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  color: darkGray,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              // TextButton(onPressed: () {}, child: Text("View all"))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              CategoryCard(
                  image: Image.asset(
                    "images/cat1.jpg",
                    fit: BoxFit.cover,
                  ),
                  name: "Frais",
                  cat: 1),
              CategoryCard(
                  image: Image.asset(
                    "images/cat2.jpg",
                    fit: BoxFit.cover,
                  ),
                  name: "Congelés",
                  cat: 2),
              CategoryCard(
                  image: Image.asset(
                    "images/cat3.jpg",
                    fit: BoxFit.cover,
                  ),
                  name: "Épicerie",
                  cat: 3),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
