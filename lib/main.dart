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
      debugShowCheckedModeBanner: false,
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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MainBackgroundColor,
          title: Image.asset('assets/unnamed.png'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(),
              ),
            ),
            Expanded(
                flex: 25,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Color(0xff7d7d7d),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.3),
                                spreadRadius: 1,
                                blurRadius: 9,
                                offset: Offset(0,-5)
                            )
                          ]
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(.4),
                                        spreadRadius: 1,
                                        blurRadius: 9,
                                        offset: Offset(0,5)
                                    )
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(Icons.account_circle, size: 30,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('111-1111-11111', style: TextStyle(fontSize: 15),),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 30),
                          child: Row(
                            children: [
                              Text('김현준',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white60
                                  )
                              ),
                            ],
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('1,382,356,000',
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: Colors.white
                                  )
                              ),
                            ],
                          )
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 40),
                            decoration: BoxDecoration(
                              color: Colors.white
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 6, bottom: 6, left: 20, right: 80),
                                      decoration: BoxDecoration(
                                          color: Color(0xffDADADA),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(.3),
                                                spreadRadius: 1,
                                                blurRadius: 9,
                                                offset: Offset(0,5)
                                            )
                                          ]
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('투자전략    ㅣ', style: TextStyle(fontSize: 24) ),
                                          Text('1', style: TextStyle(fontSize: 24, color: Color(0xff500000)) ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      width: 350,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF1F1F1),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black.withOpacity(.3),
                                              spreadRadius: 1,
                                              blurRadius: 9,
                                              offset: Offset(0,5)
                                          )
                                        ]
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 210,top: 40),
                                            child: Text('Today',style: TextStyle(fontSize: 40),)
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 200, top: 10),
                                            child: Text('+256,000',
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: Color(0xff723E3E)
                                              )
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 240, top: 10),
                                            child: Text('+19.5%',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Color(0x8cFF4848)
                                                )
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  ],
                ),
            )
          ],
          )
      ),
    );
  }
}
