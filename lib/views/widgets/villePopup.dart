import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/views/components/rounded_button.dart';
import 'package:get/get.dart';

class VillePopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: dialogContent(context));
  }

  dialogContent(BuildContext context) {
    String _selected;
    List<Map> _myJson = [
      {"id": '1', "image": "assets/banks/affinbank.png", "name": "Affin Bank"},
      {"id": '2', "image": "assets/banks/ambank.png", "name": "Ambank"},
      {"id": '3', "image": "assets/banks/bankislam.png", "name": "Bank Isalm"},
      {
        "id": '4',
        "image": "assets/banks/bankrakyat.png",
        "name": "Bank Rakyat"
      },
      {
        "id": '5',
        "image": "assets/banks/bsn.png",
        "name": "Bank Simpanan Nasional"
      },
      {"id": '6', "image": "assets/banks/cimb.png", "name": "CIMB Bank"},
      {
        "id": '7',
        "image": "assets/banks/hong-leong-connect.png",
        "name": "Hong Leong Bank"
      },
      {"id": '8', "image": "assets/banks/hsbc.png", "name": "HSBC"},
      {"id": '9', "image": "assets/banks/maybank.png", "name": "MayBank2U"},
      {
        "id": '10',
        "image": "assets/banks/public-bank.png",
        "name": "Public Bank"
      },
      {"id": '11', "image": "assets/banks/rhb-now.png", "name": "RHB NOW"},
      {
        "id": '12',
        "image": "assets/banks/standardchartered.png",
        "name": "Standard Chartered"
      },
      {
        "id": '13',
        "image": "assets/banks/uob.png",
        "name": "United Oversea Bank"
      },
      {"id": '14', "image": "assets/banks/ocbc.png", "name": "OCBC Bank"},
    ];

    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 16),
          margin: EdgeInsets.only(
            top: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Villes"),
              ),
              TextField(),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Zones"),
              ),
              DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    isDense: true,
                    hint: new Text("Choisir votre ville"),
                    value: _selected,
                    onChanged: (value) {
                      print(value);
                    },
                    items: _myJson.map((Map map) {
                      return new DropdownMenuItem<String>(
                        value: map["id"].toString(),
                        // value: _mySelection,
                        child: Text(map["name"]),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 25),
              RoundedButton(
                text: "Appliquer",
                width: 200,
                press: () {
                  Navigator.pop(context);
                },
                color: darkBlueColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  // dropdrop(BuildContext context) {
  //   return Container(
  //     padding: EdgeInsets.all(15),
  //     decoration: BoxDecoration(
  //         border: Border.all(width: 1, color: Colors.grey),
  //         borderRadius: BorderRadius.circular(10)),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: <Widget>[],
  //     ),
  //   );
  // }
}
