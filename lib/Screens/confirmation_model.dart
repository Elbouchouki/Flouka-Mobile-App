import 'package:flutter/material.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: authLinarGrad)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.1),
              Container(
                  width: 200,
                  child: Image(
                    image: AssetImage("assets/images/send.png"),
                  )),
              SizedBox(height: size.height * 0.30),
              Text(
                "Votre compte a été créé avec succès ",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              Text(
                "Consulter votre boite E-mail pour obtenir votre mot de passe ",
                style: TextStyle(fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                width: 150,
                color: darkBlueColor,
                text: "Se connecter",
                press: () => Get.toNamed("/login"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
