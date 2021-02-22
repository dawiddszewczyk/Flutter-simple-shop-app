import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:shop_application/Services/Global_class/product.dart';
import 'Details_Pages/Detail_Product_Page.dart';
import 'Blocks/Product_block.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    final product1 = Provider.of<List<product>>(context);

    return GridView.count(
      primary: true,
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      children: List.generate(product1.length, (index) {
        return ProductBlock(Produkt: product1[index], press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Detail_Product_Screen(Product: product1[index]))),);
      }),
    );
  }
}
