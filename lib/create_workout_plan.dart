import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu, color: Colors.greenAccent,),
          centerTitle: true,
          title: Text('VELOCITY', style: TextStyle(color: Colors.greenAccent.shade700, fontWeight: FontWeight(800))),
          actions: [
            CircleAvatar()
          ],
        ),
      )


    );
  }
}