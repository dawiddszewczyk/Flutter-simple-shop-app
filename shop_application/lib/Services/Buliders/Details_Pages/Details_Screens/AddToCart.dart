import 'package:flutter/material.dart';
import 'package:shop_application/Services/Convert_Mechanic/hex_convert.dart';
import 'package:shop_application/Services/Global_class/product.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.Product,
  }) : super(key: key);

  final product Product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20.0),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: HexColor('#cfb53b'),
              ),
            ),
            child: Icon(Icons.add_shopping_cart,color: HexColor('#cfb53b'),)
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: HexColor('#cfb53b'),
                onPressed: () {},
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}