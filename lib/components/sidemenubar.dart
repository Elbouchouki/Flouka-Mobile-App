import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class SideMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool userLoggedIn = true;

    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(50),
            color: darkBlueColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(userLoggedIn ? Icons.logout : Icons.login,
                                color: Colors.white, size: 20),
                            SizedBox(width: 10),
                            Text(userLoggedIn ? 'Sign Out' : 'Sign In',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))
                          ],
                        )),
                    SizedBox(height: 10),
                    Visibility(
                        visible: !userLoggedIn,
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.home, color: Colors.white, size: 20),
                                SizedBox(width: 10),
                                Text('Welcome',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))
                              ],
                            )))
                  ],
                ),
              ],
            )));
  }
}
