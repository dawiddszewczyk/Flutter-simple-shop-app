import 'package:flutter/material.dart';
import 'cart_counter.dart';
class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 45,
          width: 45,

          child: Icon(Icons.favorite,color: Colors.red,),
        )
      ],
    );
  }
}