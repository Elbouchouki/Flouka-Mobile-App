import 'package:flutter/material.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
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
                  height: size.height * 0.12,
                ),
                SizedBox(height: size.height * 0.1),
                RoundedInputField_nom(
                  hintText: "Nom et prénom",
                  onChanged: (value) {},
                ),
                RoundedInputField_email(
                  hintText: "E-mail",
                  onChanged: (value) {},
                ),
                RoundedInputField_tele(
                  hintText: "Téléphone",
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.05),
                RoundedButton(
                  width: 150,
                  color: darkBlueColor,
                  text: "S'inscrire",
                  press: () {
                    Get.toNamed("/confirmation");
                  },
                ),
                SizedBox(height: size.height * 0.20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Vous avez déja un compte ? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed("/login"),
                      child: Text(
                        " Connectez-vous",
                        style: TextStyle(
                          color: darkBlueColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xFFFFFF),
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
