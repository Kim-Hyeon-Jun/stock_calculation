import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  Main({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  Widget userAccountName = Container(
    child: Row(
      children: [
        Text('증권계좌명'),
        //여러개의 증권계좌 중 대표 표시
        Icon(
          Icons.arrow_drop_down
        )
        // 아이콘 클릭시 다른 증권계좌 선택 가능해야함
      ],
    ),
  );

 Widget userStrategy = Container(
   decoration: BoxDecoration(
     border: Border.all( width: 2)
   ),
   child: Column(
     children: [
       Container(
         child: Row(
           children: [
             Icon(Icons.functions),
             Text('투자전략 n')
           ],
         ),
       ),
       Container(
         child: Row(
           children: [
             Text('손익금액표시')
             // 클릭시 자신의 '재무제표'란으로 들어감
           ],
         ),
       )
     ],
   ),
 );

 Widget userAccountStateLine = Container(
   child: Column(
     children: [
       Container(
         decoration: BoxDecoration(
             border: Border.all( width: 0.5)
         ),
         child: Text('초기 투자금액'),
       ),
       Icon(Icons.arrow_downward_rounded),
       Container(
         decoration: BoxDecoration(
             border: Border.all( width: 0.5)
         ),
         child: Text('현재 금액'),
       ),
       Icon(Icons.arrow_downward_rounded),
       Container(
         decoration: BoxDecoration(
             border: Border.all( width: 0.5)
         ),
         child: Text('목표 금액'),
       )
     ],
   ),
 );

 Widget userAccountStateYield = Container(
   child: Row(
     children: [
       Text('수익률%')
     ],
   ),
 );

var userImageurl = 'https://blog.kakaocdn.net/dn/bhk3Sg/btquM9BVthu/1Par8gNR9w6UB96dEQ7k70/img.png';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Container(
          margin: const EdgeInsets.all(5),
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           image: DecorationImage(
             image: NetworkImage(userImageurl)
           )
         ),
        ),
        title: Container(
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('userName', style: TextStyle(fontSize: 30) ),
                Text('너무 흔한 진실, 특별해 보이는 거짓', style: TextStyle(fontSize: 10) )
              ],
            ),
          ),
        )
      ),
      body: Center(
        child: Column(
          // A1 A2 A3
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //A1
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all( width: 0.1)
              ),
              child: Column(
                children: [
                  userAccountName,
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all( width: 0.1),
                       ),
                       child: userStrategy,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all( width: 0.1),
                        ),
                        child: Row(
                          children: [
                            userAccountStateLine,
                            userAccountStateYield
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
