import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class CartView extends StatelessWidget {
  List products = [
    {
      "id": 1,
      "img": "adapt-bb-2-basketball-shoe-lgBfBb_1.jpg",
      "name": "Nike Adapt BB 2.0",
      "price": "299.00",
      "mul_img": [
        "adapt-bb-2-basketball-shoe-lgBfBb_1.jpg",
        "adapt-bb-2-basketball-shoe-lgBfBb_2.jpg",
        "adapt-bb-2-basketball-shoe-lgBfBb_3.jpg",
        "adapt-bb-2-basketball-shoe-lgBfBb_4.jpg"
      ],
      "sizes": [
        "40",
        "41",
        "41,5",
        "42",
        "43",
        "44",
      ],
    },
    {
      "id": 2,
      "img": "air-vapormax-360-shoe-KBGFwq_1.jpg",
      "name": "Nike Air Force 1",
      "price": "160.00",
      "mul_img": [
        "air-vapormax-360-shoe-KBGFwq_1.jpg",
        "air-vapormax-360-shoe-KBGFwq_2.jpg",
        "air-vapormax-360-shoe-KBGFwq_3.jpg",
        "air-vapormax-360-shoe-KBGFwq_4.jpg",
      ],
      "sizes": [
        "40",
        "41",
        "41,5",
        "42",
        "43",
        "44",
      ],
    },
    {
      "id": 3,
      "img": "joyride-cc-shoe-Qbt71m_1.jpg",
      "name": "Nike Joyride CC",
      "price": "140.00",
      "mul_img": [
        "joyride-cc-shoe-Qbt71m_1.jpg",
        "joyride-cc-shoe-Qbt71m_2.jpg",
        "joyride-cc-shoe-Qbt71m_3.jpg",
        "joyride-cc-shoe-Qbt71m_4.jpg"
      ],
      "sizes": [
        "40",
        "41",
        "41,5",
        "42",
        "43",
        "44",
      ],
    },
    {
      "id": 4,
      "img": "jordan-max-200-shoe-C2S1xN_1.jpg",
      "name": "Jordan Max 200",
      "price": "125.00",
      "mul_img": [
        "jordan-max-200-shoe-C2S1xN_1.jpg",
        "jordan-max-200-shoe-C2S1xN_2.jpg",
        "jordan-max-200-shoe-C2S1xN_3.jpg",
        "jordan-max-200-shoe-C2S1xN_4.jpg"
      ],
      "sizes": [
        "40",
        "41",
        "41,5",
        "42",
        "43",
        "44",
      ],
    },
    {
      "id": 5,
      "img": "jordan-aerospace-720-shoe-MtlBtG_1.jpg",
      "name": "Jordan Aerospace 720",
      "price": "200.00",
      "mul_img": [
        "jordan-aerospace-720-shoe-MtlBtG_1.jpg",
        "jordan-aerospace-720-shoe-MtlBtG_2.jpg",
        "jordan-aerospace-720-shoe-MtlBtG_3.jpg",
        "jordan-aerospace-720-shoe-MtlBtG_4.jpg",
      ],
      "sizes": [
        "40",
        "41",
        "41,5",
        "42",
        "43",
        "44",
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: darkBlueColor,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Panier",
                                  style: TextStyle(
                                    color: darkGray,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            children: List.generate(products.length, (index) {
              return FadeInDown(
                duration: Duration(milliseconds: 350 * index),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0.5,
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 1)
                            ],
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 0, right: 0, bottom: 0),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/cat1.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "qsdqsd qsd",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                products[index]['price'] + " Dh",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                products[index]['price'] + " Dh",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(0.5),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 120,
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "508.00" + " Dh",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: darkBlueColor,
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          "PAYER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
