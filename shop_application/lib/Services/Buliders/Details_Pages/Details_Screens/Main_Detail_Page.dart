import 'package:flutter/material.dart';
import 'package:shop_application/Services/Convert_Mechanic/hex_convert.dart';
import 'package:shop_application/Services/Global_class/product.dart';
import 'description.dart';
import 'CounterWithFavBtn.dart';
import 'AddToCart.dart';
import 'product_title.dart';
class Body extends StatelessWidget {
  final product Product;

  const Body({Key key, this.Product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: <Widget>[
            Wrap(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20.0,
                    right: 20.0,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: HexColor('#101010'),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 0.1 / 2),
                      Description(Product: Product),
                      SizedBox(height: 20.0 / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: 40.0 ),
                      AddToCart(Product: Product)
                    ],
                  ),
                ),
              ],
            ),
            ProductTitleWithImage(Product: Product)
          ],
        ),
      ),
    );
  }
}

