import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_calculation/constants.dart';
import 'package:stock_calculation/searchpage.dart';

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
          title: Center(
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Image.asset('assets/icon.png',
                height: 60,
                width: 100,)
            )
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: MainBackgroundColor,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(right: 15, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: Icon(Icons.account_box_rounded,size: 50),
                          onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.format_list_numbered,size: 50),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.book,size: 50),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.settings,size: 50),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: IconButton(
                    icon: Icon(Icons.search,size: 50),
                    // navigator 다른거 이용? back button과 연관
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return searchPage();
                          })
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}