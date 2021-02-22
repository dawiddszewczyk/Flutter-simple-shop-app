import 'package:flutter/material.dart';
import 'package:shop_application/Services/Global_class/product.dart';


class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.Product,
  }) : super(key: key);

  final product Product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        Product.desc,
        style: TextStyle(height: 1.5,color: Colors.white),
      ),
    );
  }
}