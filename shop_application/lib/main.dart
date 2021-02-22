import 'package:flutter/material.dart';
import 'Pages/p_loading.dart';
import 'Pages/p_home.dart';
void main() =>
  runApp(MaterialApp(
    initialRoute:  '/loading',
    routes:  {
      '/home':(context) => Home(),
      '/loading':(context) => Loading(),
    },
  ));



