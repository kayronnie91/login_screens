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

                // FIRST TEXT FIELD //

                Text('FULL NAME',
                style: TextStyle(
                  color: Color(0xFFABABA6),
                  fontSize: 12,
                ),
                ),
                SizedBox(height:12),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xFF121411),
                    filled: true,
                    hintText: 'Alex Rivera',
                    hintStyle: TextStyle(),
                    )
                  ),


                SizedBox(height:24),

                // SECOND TEXT FIELD //

                Text('EMAIL ADDRESS',
                style:TextStyle(
                  color: Color(0xFFABABA6),
                  fontSize: 12,
                ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xFF121411),
                    filled: true,
                    hintText: 'name@email.com',
                    hintStyle: TextStyle(),
                  ),
                ),

                SizedBox(height: 23),

                // THIRD TEXT FIELD //
                Text('PASSWORD',
                style:TextStyle(
                  color: Color(0xFFABABA6),
                  fontSize: 12,
                )
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xFF121411),
                    filled: true,
                    hintText: '************',
                    hintStyle: TextStyle(),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: (){},
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEAFFB8),
                      elevation: 8,
                      minimumSize: Size(double.infinity,60),
                    ),
                  child:Text(
                    'CREATE ACCOUNT',
                    style: TextStyle(
                      fontSize: 18,
                      color:Color(0xFF4B6600),
                      letterSpacing: 1.4,
                    ),
                  )
                ),
                SizedBox(height: 32),
                Center(
                  child: Text('OR SIGN UP WITH',
                  style: TextStyle(
                    color:Color(0xFFABABA6),
                    fontSize: 12,
                    letterSpacing: 1.5,
                  ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 64,
                      width:64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xFF1E201C),
                      ),
                      child:Icon(Icons.mail),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 64,
                      width:64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xFF1E201C),

                      ),
                      child:Icon(Icons.phone),
                    )

                  ],
                )


              ],

            ),
          ),
        )
      )

    );
  }
}
