import 'dart:convert';

class Qualite {
  Qualite({
    this.id,
    this.nom,
    this.active,
  });

  int id;
  String nom;

  bool active;

  factory Qualite.fromJson(Map<String, dynamic> json) => Qualite(
        id: json["id"],
        nom: json["nom"],
        active: json["active"] == null ? null : json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "active": active == null ? null : active,
      };
}
