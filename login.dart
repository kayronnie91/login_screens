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
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Text('AUTHORITY'),
            centerTitle: true,
          ),
          body:Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('WELCOME BACK',
                      style: TextStyle(
                      fontSize: 14,
                        color: Color(0xFF003461),
                        letterSpacing: 2.8,
                      ),
                      ),
                      SizedBox(height: 8),
                      Text('Login to your account',
                      style:TextStyle(
                      fontSize: 30,
                        letterSpacing: -0.75,
                      )
                      ),
                    ],
                  ),
                  SizedBox(height:40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('EMAIL ADDRESS'),
                      SizedBox(height:8),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                              hintText: 'name@email.com',
                          hintStyle: TextStyle(
                            color:Colors.grey,
                          ),
              
                          )
                        ),
                      SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('PASSWORD'),
                          Text('FORGOT PASSWORD',
                          style: TextStyle(
                            color: Color(0xFF003461),
                            fontWeight: FontWeight(600)
                          ),)
                        ],
                      ),
                      SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: '********',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          )
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF004B87),
                          minimumSize:Size(double.infinity,56)
                        ),
                        child: Text('LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight(700),
                          fontSize: 14,
                          letterSpacing: 1.4,
                          color: Colors.white,
                        ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(    // THIS IS THE ROW WITH OR CONTINUE HERE //
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                          SizedBox(width: 16),
                          Text('OR CONTINUE HERE'),
                          SizedBox(width: 16),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      // THIS IS THE ROW WITH TWO BUTTONS //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: (){},
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(25,12,25,12),
                              child: Row(
                                children: [
                                  Icon(Icons.logo_dev),
                                  SizedBox(width:12),
                                  Text('Google',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  ),
                                ],
                              ),
                            )
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(25,12,25,12),
                                child: Row(
                                  children: [
                                    Icon(Icons.logo_dev),
                                    SizedBox(width:12),
                                    Text('Apple',
                                    style:TextStyle(
                                      color:Colors.black,
                                    )
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF4B5563),
                            ),
                            children: [
                              TextSpan(text: "Don't have an account? "),
                              TextSpan(
                                text: "Create an account",
                                style: TextStyle(
                                  color: Color(0xFF003461),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),

                  Center(child: Text(
                    '\u00a9 AUTHORITY 2024 ARCHITECTURAL SYSTEMS\nPRIVACY PROTOCOL LEGAL AUTHORITY',
                    textAlign: TextAlign.center,)
                  )

                ],
              ),
            ),
          )
          ),
        );
  }
}

