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
      theme:ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        )

      ),
      home:Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back,
          color: Color(0xFFBFFF00),
          ),
          title: Text('JOIN THE ELITE',
          style:TextStyle(
               color:Color(0xFFBFFF00),
            fontSize: 24,
            fontWeight: FontWeight(800),
            letterSpacing: -1.2,
          )
        ),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/sign_up.jpg',
                width: double.infinity),
                SizedBox(height: 30),

                // END OF HERO SECTION //
                // MAIN COLUMN HOLDING INPUT FIELDS //

                Text('FULL NAME',
                style: TextStyle(
                  color: Color(0xFFABABA6),
                ),
                )

              ],

            ),
          ),
        )
      )

    );
  }
}
