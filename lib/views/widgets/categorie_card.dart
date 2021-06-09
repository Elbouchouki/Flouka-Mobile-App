import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  String name;
  Image image;
  int cat;
  String svg;

  CategoryCard({this.image, this.name, this.cat, this.svg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/products", arguments: [cat, name]),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: image,
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.4),
                          Colors.black.withOpacity(.2),
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          svg,
                          width: 50,
                          height: 50,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: lightGray,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
