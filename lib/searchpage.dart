import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:stock_calculation/constants.dart';

class searchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _searchPageState();
  }
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MainBackgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                    onPressed: () {
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 20),
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '상품검색',
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.only(bottom: 0),
                    icon: Icon(Icons.search,size: 30,
                    ),
                    onPressed: null)
                  //검색 DB로 입력
                ],
              )
            ),
            ListView.separated(
                itemBuilder: null,
                separatorBuilder: null,
                itemCount: null)
          ],
        ),
      ),
    );
  }
}