import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'package:shop_application/Services/Global_Variable/globals.dart' as globals;
import 'package:shop_application/Services/Global_class/product.dart';
import 'package:shop_application/Services/Global_class/category.dart';
import 'package:shop_application/Services/DataBase/Global_DataBase.dart';
import 'package:shop_application/Services/Buliders/Category_bulider.dart';
import 'package:shop_application/Services/Buliders/Product_list.dart';
class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  refresh() {
    if(globals.update == true)
    {
      setState(() {});
      globals.update = false;
      globals.isSelected = false;
    }
  }
  Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
      this.setState(() {
        refresh();
      });
    });

  }


  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        StreamProvider<List<product>>.value(value: DatabaseService().products),
        StreamProvider<List<category>>.value(value: DatabaseService().categories),
      ],
      child: Padding(
        padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 50),
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Category_bulider()
                  )
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 450),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      child: ProductList(),
                    ),
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}





