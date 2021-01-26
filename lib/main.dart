import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_calculation/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
   build(BuildContext context) {
    return new MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: MainBackgroundColor,

        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(),
              ),
            ),
            Expanded(
                flex: 10,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100, right: 100),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                      ),
                    )
                  ],
                ),
            )
          ],
          )
      ),
    );
  }
}
