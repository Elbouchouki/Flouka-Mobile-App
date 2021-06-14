import 'package:flutter_auth/models/categorie.dart';
import 'package:flutter_auth/models/photo.dart';

class Produit {
  Produit({
    this.id,
    this.nom,
    this.codeComptable,
    this.codeAnalytique,
    this.photoPrincipale,
    this.descriptionF,
    this.descriptionC,
    this.active,
    this.profilType,
    this.sousCategorieId,
    this.familleId,
    this.modeVenteId,
    this.uniteId,
    this.modePreparationId,
    this.unite,
    this.photos,
  });

  int id;
  String nom;
  dynamic codeComptable;
  dynamic codeAnalytique;
  String photoPrincipale;
  String descriptionF;
  String descriptionC;
  bool active;
  int profilType;
  int sousCategorieId;
  int familleId;
  int modeVenteId;
  int uniteId;
  int modePreparationId;

  Categorie unite;
  List<Photo> photos;

  factory Produit.fromJson(Map<String, dynamic> json) => Produit(
        id: json["id"],
        nom: json["nom"],
        codeComptable: json["code_comptable"],
        codeAnalytique: json["code_analytique"],
        photoPrincipale: json["photo_principale"],
        descriptionF: json["description_f"],
        descriptionC: json["description_c"],
        active: json["active"],
        profilType: json["profil_type"],
        sousCategorieId: json["sous_categorie_id"],
        familleId: json["famille_id"],
        modeVenteId: json["mode_vente_id"],
        uniteId: json["unite_id"],
        modePreparationId: json["mode_preparation_id"],
        unite: Categorie.fromJson(json["unite"]),
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "code_comptable": codeComptable,
        "code_analytique": codeAnalytique,
        "photo_principale": photoPrincipale,
        "description_f": descriptionF,
        "description_c": descriptionC,
        "active": active,
        "profil_type": profilType,
        "sous_categorie_id": sousCategorieId,
        "famille_id": familleId,
        "mode_vente_id": modeVenteId,
        "unite_id": uniteId,
        "mode_preparation_id": modePreparationId,
        "unite": unite.toJson(),
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
      };
}
