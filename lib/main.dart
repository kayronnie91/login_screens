import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color(0xFFF8FAFC),
        appBar:AppBar(
          title:Padding(
            padding: EdgeInsets.fromLTRB(24, 16, 60, 16),
            child: Row(
              children: [
                Icon(Icons.arrow_back,
                  size:15.2,
                  color: Color(0xFF004B87),
                ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child:Center(
                child:Text('AUTHORITY',
                style: TextStyle(
                color: Color(0xFF004B87),
                fontSize: 20,
                height: 1.4,
                letterSpacing: 4,
                ),
              ),
              ),
            ),
              ],
            ),
          ),
          ),
          body:Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical:27,
            ),
            child: Container(
              color: Color(0xFFF2F4F7),
              child:Column(

              )




             ),
          )
          )
    );
  }
}


// title: Padding(
// child:Text('AUTHORITY',
// centerTitle: true,
// style: TextStyle(
// color: Color(0xFF004B87),
// fontSize: 20,
// height: 1.4,
// letterSpacing: 4,
// ),
// )
// leading: Icon(Icons.arrow_back,
// size:15.2,
// color: Color(0xFF004B87),
// ),
//
//
// )