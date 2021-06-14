import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controllers/cartController.dart';
import 'package:flutter_auth/controllers/detailsController.dart';
import 'package:flutter_auth/controllers/productViewController.dart';
import 'package:flutter_auth/helper/heper.dart';
import 'package:flutter_auth/views/widgets/tranche.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  DetailsController detailsController = Get.find();
  CartController cartController = Get.find();
  ProductViewController pwc = Get.find();
  String chooseDescription() {
    switch (detailsController.product.value.categorieId) {
      case 1:
        return detailsController.product.value.stock.produit.descriptionC;
        break;
      case 2:
        return detailsController.product.value.stock.produit.descriptionF;
        break;
      default:
        return ("description Epicerie ..... (pas encore faite)");
    }
  }

  String chooseSousCategorie() {
    return pwc.sousCategories
        .where((sousCat) =>
            (sousCat.id == detailsController.product.value.sousCategorieId))
        .toList()[0]
        .nom;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: darkBlueColor,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(Helper.imageFormatter(
                          detailsController.product.value.photoPrincipale)),
                      fit: BoxFit.cover),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            color: Colors.black.withOpacity(0.6),
                            blurRadius: 10)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          detailsController.product.value.nom,
                          style: TextStyle(fontSize: 20, height: 1.5),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(detailsController
                                    .product.value.stock.categorie.nom),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(chooseSousCategorie()),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child:
                                    Text(detailsController.product.value.nom),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Description",
                          style: TextStyle(fontSize: 16, color: Colors.indigo),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          chooseDescription(),
                          style: TextStyle(height: 1.6),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount:
                                  detailsController.listProducts.value.length,
                              itemBuilder: (BuildContext ctx, int index) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Tranche(
                                      produit: detailsController
                                          .listProducts[index]),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 80,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: darkBlueColor,
                    onPressed: () {
                      Get.snackbar("Notification", "Produit Ajouté.",
                          backgroundColor: Colors.white,
                          titleText: Text("Notification"),
                          colorText: darkBlueColor,
                          snackPosition: SnackPosition.TOP,
                          boxShadows: [
                            BoxShadow(
                                spreadRadius: 2,
                                color: Colors.black.withOpacity(0.6),
                                blurRadius: 10)
                          ],
                          icon: Icon(Icons.notifications),
                          shouldIconPulse: true,
                          margin: EdgeInsets.all(10));
                    },
                    child: Container(
                      height: 50,
                      child: Center(
                        child: Text(
                          "Ajouter au Panier",
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
