import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
class Body extends StatelessWidget {
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
     colors: [
       Colors.indigo.shade400,
       Colors.indigo.shade200,
       Colors.indigo.shade100,
       Colors.indigo.shade50,
     ]
     )
     ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: size.height * 0.1),
            Container(
                width: 200,
                child: Image(
                  image: AssetImage("assets/images/task-done-485060.png"),
                )
            ),
            SizedBox(height: size.height * 0.30),
            Text(
              "\n \n  Votre compte a été créé avec succès ",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            Text(
              "\n Consulter votre boite E-mail pour obtenir votre mot de pass ",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "Se connecter",
              press: () {Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();},),);},
            ),
          ],
        ),
      ),
    )
     ),
    );
  }
}

