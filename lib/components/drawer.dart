import 'package:flutter/material.dart';
import 'package:flutter_auth/components/search_field.dart';


class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = '';
    final email = '';
    final urlImage =
        '';

    return Drawer(
      child: Material(
        color: Color.fromRGBO(135, 148, 212, 1.0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [

                  const SizedBox(height: 40),
                  Image.network('assets/images/logo.png',width: 150,),
                  const SizedBox(height: 30),
                  Divider(color: Colors.white70),

                  const SizedBox(height: 60),
                  buildMenuItem(
                    text: 'Acceuil',
                    icon: Icons.person,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'A propos',
                    icon: Icons.info,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Contact',
                    icon: Icons.mail,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Déconnection',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
      // ignore: missing_return
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {  }
          //builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
      // ignore: missing_return
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {  }
          // builder: (context) => FavouritesPage(),
        ));
        break;
    }
  }
}
