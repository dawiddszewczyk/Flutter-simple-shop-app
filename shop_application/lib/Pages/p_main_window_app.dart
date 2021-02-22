import 'package:flutter/material.dart';
import 'package:shop_application/Pages/Inside_Main_Window/m_w_category_selector.dart';
import 'Inside_Main_Window/m_w_drawer.dart';
import 'Inside_Main_Window/m_w_app_bar.dart';
import 'package:shop_application/Services/Convert_Mechanic/hex_convert.dart';
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SafeArea(
          child: Scaffold(
            drawer: Drawer_app(),
            backgroundColor: HexColor('#101010'),
            appBar: buildAppBar(),
            body:SafeArea(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RichText(
                        text: TextSpan(
                            text: 'Get Inspired With\n', style: TextStyle(color: Colors.white, fontSize: 35,fontFamily: 'Cormorant',fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(text: 'Our Furniture', style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Cormorant_L')
                              )
                            ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CategorySelector(),

                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
