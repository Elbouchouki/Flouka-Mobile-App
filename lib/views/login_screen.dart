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
                    logoFloukaPrimary,
                    height: size.height * 0.12,
                  ),
                  SizedBox(height: size.height * 0.1),
                  RoundedInputField_email(
                    hintText: logininputEmail,
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    hintText: logininputPassword,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: size.height * 0.05),
                  RoundedButton(
                    width: 150,
                    color: loginButtonColor,
                    text: loginButton,
                    press: () => Get.offAllNamed("/home"),
                  ),
                  SizedBox(height: size.height * 0.30),
                  Text(
                    loginBottomText,
                    style: loginBottomTextStyle,
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed("/signup"),
                    child:
                        Text(loginBottomButton, style: loginBottomButtomStyle),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
