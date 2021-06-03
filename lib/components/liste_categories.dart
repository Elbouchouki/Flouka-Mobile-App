import 'package:flutter/material.dart';

import 'categorie_items.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Poissons frais",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Poissons congelés",
            press: () {},
          ),
          CategoryItem(
            title: "Épicerie",
            press: () {},
          ),
        ],
      ),
    );
  }
}