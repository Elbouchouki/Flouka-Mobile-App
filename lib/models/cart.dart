import 'dart:convert';

import 'package:flutter_auth/models/stock.dart';

class Cart {
  List<Stock> produits;
  int qte;
  double totalPrice;
  String id;
  List<Stock> get getProduit => this.produits;
  int get getQte => this.qte;
  double get getTotalPrice => this.totalPrice;
  Cart({this.id, this.produits, this.qte, this.totalPrice});

  // factory Cart.fromJson(Map<String, dynamic> json) => Cart(
  //       produit: Stock.fromJson(json["produit"]),
  //       id: json["id"],
  //       qte: json["qte"],
  //       totalPrice: json["totalPrice"],
  //     );

  // Map<String, dynamic> toJson() => {
  //       "produit": produit.toJson(),
  //       "qte": qte,
  //       "id":id,
  //       "totalPrice": totalPrice,
  //     };
}
