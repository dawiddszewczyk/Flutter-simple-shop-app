import 'package:flutter/material.dart';
import 'package:shop_application/Services/Convert_Mechanic/hex_convert.dart';
AppBar buildAppBar() {
  return AppBar(
    backgroundColor: HexColor('#101010'),
    automaticallyImplyLeading: false,
    elevation: 0,
    leading: Builder(
      builder: (context) => IconButton(
        icon: new Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search, color: Colors.white),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.shopping_basket, color: Colors.white),
        onPressed: () {},
      ),
      SizedBox(width: 20.00 / 2)
    ],
  );
}