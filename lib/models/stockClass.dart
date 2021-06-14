import 'package:flutter_auth/models/categorie.dart';
import 'package:flutter_auth/models/depot.dart';
import 'package:flutter_auth/models/produit.dart';

class StockClass {
  StockClass({
    this.id,
    this.type,
    this.qte,
    this.prixAchat,
    this.brFounisseur,
    this.uniteId,
    this.brNum,
    this.lotNum,
    this.categorieId,
    this.produitId,
    this.depotId,
    this.createdAt,
    this.updatedAt,
    this.depot,
    this.produit,
    this.categorie,
  });

  int id;
  String type;
  String qte;
  String prixAchat;
  String brFounisseur;
  int uniteId;
  String brNum;
  String lotNum;
  int categorieId;
  int produitId;
  int depotId;
  DateTime createdAt;
  DateTime updatedAt;
  Depot depot;
  Produit produit;
  Categorie categorie;

  factory StockClass.fromJson(Map<String, dynamic> json) => StockClass(
        id: json["id"],
        type: json["type"],
        qte: json["qte"],
        prixAchat: json["prix_achat"],
        brFounisseur: json["br_founisseur"],
        uniteId: json["unite_id"],
        brNum: json["br_num"],
        lotNum: json["lot_num"],
        categorieId: json["categorie_id"],
        produitId: json["produit_id"],
        depotId: json["depot_id"],
        depot: Depot.fromJson(json["depot"]),
        produit: Produit.fromJson(json["produit"]),
        categorie: Categorie.fromJson(json["categorie"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "qte": qte,
        "prix_achat": prixAchat,
        "br_founisseur": brFounisseur,
        "unite_id": uniteId,
        "br_num": brNum,
        "lot_num": lotNum,
        "categorie_id": categorieId,
        "produit_id": produitId,
        "depot_id": depotId,
        "depot": depot.toJson(),
        "produit": produit.toJson(),
        "categorie": categorie.toJson(),
      };
}
