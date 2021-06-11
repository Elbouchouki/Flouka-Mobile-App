class Tranche {
  Tranche({
    this.id,
    this.nom,
    this.uid,
    this.minPoids,
    this.maxPoids,
    this.modeVenteId,
  });

  int id;
  String nom;
  String uid;
  String minPoids;
  String maxPoids;
  int modeVenteId;

  factory Tranche.fromJson(Map<String, dynamic> json) => Tranche(
        id: json["id"],
        nom: json["nom"],
        uid: json["uid"],
        minPoids: json["min_poids"],
        maxPoids: json["max_poids"],
        modeVenteId: json["mode_vente_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "uid": uid,
        "min_poids": minPoids,
        "max_poids": maxPoids,
        "mode_vente_id": modeVenteId,
      };
}
