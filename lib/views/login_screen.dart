import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/views/components/rounded_button.dart';
import 'package:flutter_auth/views/components/rounded_input_field.dart';
import 'package:flutter_auth/views/components/rounded_password_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
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
                  Image.asset(
                    "assets/images/logo.png",
                    height: size.height * 0.1,
                  ),
                  SizedBox(height: size.height * 0.2),
                  RoundedInputField_email(
                    hintText: "E-mail ou Téléphone",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  SizedBox(height: size.height * 0.05),
                  RoundedButton(
                    width: 200,
                    color: darkBlueColor,
                    text: "Se connecter",
                    press: () => Get.offAllNamed("/home"),
                  ),
                  SizedBox(height: size.height * 0.1),
                  Text(
                    "Vous n'être pas encore inscrit sur Flouka ? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed("/signup"),
                    child: Text(
                      " Inscrivez-vous",
                      style: TextStyle(
                        color: darkBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 20,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
