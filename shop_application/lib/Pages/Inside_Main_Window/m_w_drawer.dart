import 'package:flutter/material.dart';
import 'package:shop_application/Services/Convert_Mechanic/hex_convert.dart';
class Drawer_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Theme(
      data: Theme.of(context).copyWith(
        canvasColor: HexColor('#101010'), //This will change the drawer background to blue.
        //other styles
      ),
      child: Drawer(
        elevation: 0.0,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Container(
                height: 150,
                child: Image.asset(
                  'assets/cropped-TAAT.png',
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ListTile(
              title: Text('Shop',style: TextStyle(height: 1.5,color: Colors.white,letterSpacing: 1.0),textAlign: TextAlign.center,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About us',style: TextStyle(height: 1.5,color: Colors.white,letterSpacing: 1.0),textAlign: TextAlign.center,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Contact',style: TextStyle(height: 1.5,color: Colors.white,letterSpacing: 1.0),textAlign: TextAlign.center,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
