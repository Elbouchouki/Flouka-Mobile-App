import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class SousCategories extends StatelessWidget {
  final List<String> listOfMenu = [
    'Toute',
    'Crustacés',
    'Poissons nobles',
    'Cephalopodes',
    'Coquillages',
    'Poissons bleus',
    'Packs frais',
    'Packs congelés',
    'Packs mixtes'
  ];
  int selectedIndexOfMenuList = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 40,
      child: ListView.builder(
          itemCount: listOfMenu.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Padding(
              padding: EdgeInsets.only(top: 5, left: 20, right: 10),
              child: GestureDetector(
                onTap: () {
                  print(listOfMenu[i]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: (i == selectedIndexOfMenuList)
                        ? lightBlueColor
                        : Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        listOfMenu[i],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: (i == selectedIndexOfMenuList)
                                ? Colors.white
                                : darkBlueColor),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
