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
        appBar:AppBar(
          leading: Icon(Icons.arrow_back,
          size:15,
          color:Colors('x0004B87')
          ),
          title:Text('AUTHORITY',
          style: TextStyle(
              fontSize: 20,
              height: 28,
          ),
          )
        )

      )

    );
  }
}


