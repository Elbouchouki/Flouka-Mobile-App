import 'package:flutter/material.dart';
import 'items_card.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: <Widget>[
          ItemCard(
            svgSrc: "",
            title: "",
            shopName: "",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //return ListPoissonsFrais();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "",
            title: "",
            shopName: "",
            press: () {},
          ),
          ItemCard(
            svgSrc: "",
            title: "",
            shopName: "",
            press: () {},
          )
        ],
      ),
    );
  }
}