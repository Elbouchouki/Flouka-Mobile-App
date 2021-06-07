import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/views/components/List_Products.dart';
import 'package:flutter_auth/views/widgets/villePopup.dart';

class Products extends StatefulWidget {
  @override
  _Products_ScreenState createState() => _Products_ScreenState();
}

// ignore: camel_case_types
class _Products_ScreenState extends State<Products>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff4b4b87);

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            )),
        primary: false,
        title: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
                hintText: " Search",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart, color: darkBlueColor),
            onPressed: () => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => VillePopup()),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]),
            child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.all(10),
                labelColor: Colors.white,
                unselectedLabelColor: colorstheme,
                labelStyle: TextStyle(fontSize: 20),
                labelPadding:
                    EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                indicator: BoxDecoration(
                    color: colorstheme,
                    borderRadius: BorderRadius.circular(20)),
                controller: _tabController,
                tabs: [
                  Text('sous cat 1'),
                  Text('sous cat 2'),
                  Text('sous cat 3'),
                ]),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              List_Products(),
              List_Products(),
              List_Products(),
            ]),
          )
        ],
      ),
    );
  }
}
