import 'package:flutter/material.dart';
import 'package:shop_application/Services/Global_class/category.dart';
import 'package:flutter/foundation.dart';
import 'package:shop_application/Services/Global_Variable/globals.dart' as globals;
class Category_Block extends StatefulWidget {
  final category Category_1;
  Category_Block({Key key, @required this.Category_1}) : super(key: key);
  @override
  _Category_BlockState createState() => _Category_BlockState();
}

class _Category_BlockState extends State<Category_Block> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child:MaterialButton(
        onPressed: ()  {
          setState((){
            globals.namechecked_category = widget.Category_1.name;
            debugPrint('${globals.namechecked_category}');
            globals.update=true;
          });
        },
        child: Text(widget.Category_1.name,
          style: TextStyle(color: Colors.white ),
        ),
      ),
    );
  }
}