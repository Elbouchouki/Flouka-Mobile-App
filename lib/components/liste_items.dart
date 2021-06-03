import 'package:flutter/material.dart';
import 'items_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
