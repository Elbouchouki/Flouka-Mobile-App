import 'dart:convert';

class Product {
  static List<Product> productFromJson(String str) =>
      List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

  static String productToJson(List<Product> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
  Product({
    this.id,
    this.name,
    this.price,
    this.qte,
    this.images,
  });

  int id;
  String name;
  double price;
  String qte;
  List<String> images;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"].toDouble(),
        qte: json["qte"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "qte": qte,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
