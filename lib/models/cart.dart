import 'dart:convert';

import 'package:flutter_auth/models/stock.dart';

class Cart {
  static List<Cart> cartFromJson(String str) =>
      List<Cart>.from(json.decode(str).map((x) => Cart.fromJson(x)));

  static String cartToJson(List<Cart> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
  Stock produit;
  int qte;
  double totalPrice;
  Stock get getProduit => this.produit;
  int get getQte => this.qte;
  double get getTotalPrice => this.totalPrice;
  Cart({this.produit, this.qte, this.totalPrice});
  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        produit: Stock.fromJson(json["produit"]),
        qte: json["qte"],
        totalPrice: json["totalPrice"],
      );

  Map<String, dynamic> toJson() => {
        "produit": produit.toJson(),
        "qte": qte,
        "totalPrice": totalPrice,
      };
}
