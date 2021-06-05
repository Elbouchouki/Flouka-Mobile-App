import 'package:flutter/material.dart';
import 'package:flutter_auth/views/components/text_field_container.dart';

// ignore: camel_case_types
class RoundedInputField_nom extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField_nom({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.indigo.shade900,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.indigo.shade900,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class RoundedInputField_email extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField_email({
    Key key,
    this.hintText,
    this.icon = Icons.mail,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.indigo.shade900,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.indigo.shade900,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class RoundedInputField_tele extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField_tele({
    Key key,
    this.hintText,
    this.icon = Icons.phone,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.indigo.shade900,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.indigo.shade900,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
