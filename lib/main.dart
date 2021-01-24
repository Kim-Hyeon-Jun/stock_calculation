import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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


 Widget userStrategy = Container(
   child: Column(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
         height: 20,
         width: 120,
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
          // A1 A2
          children: [
            Container(
              //A1
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 20,right: 20, top: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all( width: 0.1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
             ),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 35,
                        width: 230,
                        decoration: BoxDecoration(
                         border: Border.all(width: 2, color: Colors.grey.withOpacity(0.2)),
                         borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('증권계좌명', style: TextStyle(fontSize: 20) ),
                            //여러개의 증권계좌 중 대표 표시
                            Icon(
                              Icons.arrow_drop_down, size: 20,
                            )
                            // 아이콘 클릭시 다른 증권계좌 선택 가능해야함
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all( width: 0.1),
                          borderRadius: BorderRadius.circular(20)
                       ),
                       child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.functions),
                                  Text('투자전략 n', style: TextStyle(fontSize: 20))
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('손익금액표시')
                                  // 클릭시 자신의 '재무제표'란으로 들어감
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 150,
                        padding: const EdgeInsets.all(8),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Column(
                             children: [
                               Container(
                                 height: 20,
                                 width: 120,
                                 decoration: BoxDecoration(
                                   border: Border.all( width: 0.5),
                                   borderRadius: BorderRadius.circular(20)
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text('초기 투자금액')
                                   ],
                                 ),
                               ),
                               Icon(Icons.arrow_downward_rounded),
                               Container(
                                 height: 20,
                                 width: 120,
                                 decoration: BoxDecoration(
                                     border: Border.all( width: 0.5),
                                     borderRadius: BorderRadius.circular(20)
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text('현재 금액')
                                   ],
                                 ),
                               ),
                               Icon(Icons.arrow_downward_rounded),
                               Container(
                                 height: 20,
                                 width: 120,
                                 decoration: BoxDecoration(
                                     border: Border.all( width: 0.5),
                                     borderRadius: BorderRadius.circular(20)
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text('목표 금액')
                                   ],
                                 ),
                               ),
                             ],
                            ),
                          ],
                        ),
                      )
                    ]
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
