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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text('WELCOME BACK'),
                    Text('WELCOME BACK'),
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
                        Text('FORGOT PASSWORD')
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
                        minimumSize:Size(double.infinity,56)
                      ),
                      child: Text('LOGIN'),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Divider(
                          color: Colors.black,
                        ),
                        Text('OR CONTINUE HERE'),
                        Divider(
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
          ),
        );
  }
}

