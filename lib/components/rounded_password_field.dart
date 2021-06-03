import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.indigo.shade900,
        decoration: InputDecoration(
          hintText: "Mot de pass",
          icon: Icon(
            Icons.lock,
            color: Colors.indigo.shade900,
          ),

          border: InputBorder.none,
        ),
      ),
    );
  }
}
