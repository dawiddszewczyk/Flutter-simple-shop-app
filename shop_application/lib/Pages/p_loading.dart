import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>  with TickerProviderStateMixin {

  void setupHome() async{
    await new Future.delayed(const Duration(seconds : 5));
    Navigator.pushReplacementNamed(context, '/home');
  }
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();
    setupHome();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[ Positioned(
          width:MediaQuery.of(context).size.width,
          top:MediaQuery.of(context).size.width / 2,
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  FadeTransition(
                    opacity: _animation,
                    child: Container(
                    height: 150,
                    child:Icon(Icons.shopping_cart,color: Colors.white,),
                  ),
                  ),
                ]
            ),
          ),
        ),
        ],
      ),
    );
  }
}
