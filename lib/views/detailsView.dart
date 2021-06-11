import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controllers/cartController.dart';
import 'package:flutter_auth/controllers/detailsController.dart';
import 'package:flutter_auth/models/product.dart';
import 'package:flutter_auth/models/produit.dart';
import 'package:flutter_auth/models/qualite.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  DetailsController detailsController = Get.find();
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage((imgDomaine +
                          detailsController.product.value.photoPrincipale
                              .substring(6))),
                      fit: BoxFit.cover),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
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
                        children: <Widget>[],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child:
                                  Text(detailsController.categorie.value.nom),
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
                              child: Text("Poissons Nobles"),
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
                              child: Text(detailsController.product.value.nom),
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
                        "Poisson marin de couleur gris argenté, au corps ovale comprimé latéralement et au front bombé, broyeur de coquillages grâce à une forte dentition, vivant essentiellement dans les eaux chaudes et tempérées de l'Atlantique Est et de la Méditerranée (rare en mer Noire), dit daurade royale.",
                        style: TextStyle(height: 1.6),
                      ),
                    ],
                  ),
                ),
              )
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
                      cartController.addProduct(Product(
                        id: 1,
                        images: [
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLX_fmurHumo9VwXlbmGXt31o9M32R7wo_gEJ41I_fsbb98KkaLBvsczpOiAXL4Rlzva8&usqp=CAU"
                        ],
                        name: "qsdqsdf",
                        price: 50.50,
                        qte: "5.800 Kg",
                      ));
                      Get.snackbar("Notification", "Produit Ajouté.",
                          backgroundColor: Colors.white,
                          titleText: Text("Notification"),
                          colorText: darkBlueColor,
                          snackPosition: SnackPosition.TOP,
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
                              fontSize: 20,
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
