import 'package:flutter/material.dart';
import 'package:shop_application/Services/Convert_Mechanic/hex_convert.dart';
import 'package:shop_application/Services/Global_class/product.dart';
import 'Details_Screens/Main_Detail_Page.dart';
class Detail_Product_Screen extends StatelessWidget {
  final product Product;

  const Detail_Product_Screen({Key key, this.Product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // each product have a color
      backgroundColor: HexColor('#cfb53b'),
      appBar: buildAppBar(context),
      body: Body(Product: Product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor('#cfb53b'),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_basket),
          onPressed: () {},
        ),
        SizedBox(width: 20.0 / 2)
      ],
    );
  }
}