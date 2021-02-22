import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_application/Services/Global_class/category.dart';
import 'Blocks/Category_block.dart';


class Category_bulider extends StatefulWidget {
  @override
  _Category_buliderState createState() => _Category_buliderState();
}

class _Category_buliderState extends State<Category_bulider> {
  @override
  Widget build(BuildContext context) {

    final categories = Provider.of<List<category>>(context);
    // Filter of cattegories to remove dublicates titles.
    Map<String, category> mp = {};
    for (var item in categories) {
      mp[item.name] = item;
    }
    var filteredList = mp.values.toList();
    return ListView(
      scrollDirection: Axis.horizontal,
      children: filteredList.length > 0 ? List.generate(filteredList.length, (index) {
        return Category_Block(Category_1: filteredList[index]);
      }) : CircularProgressIndicator,
    );
  }
}
