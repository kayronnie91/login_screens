import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.fromLTRB(24, 16, 60, 16),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 15.2,
                  color: Color(0xFF004B87),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Center(
                    child: Text(
                      'AUTHORITY',
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

        // THIS IS WHERE THE BODY BEGINS //

        body: Padding( // This is the padding on the body so that we can push the container holding the column inside //
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 27,
          ),
          child: Container( // this is the container holding the column //
            decoration: BoxDecoration(
              color: Color(0xFFF2F4F7),
              borderRadius: BorderRadius.circular(15),
            ),

            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column( // this is the column holding all contents inside such as input fields //
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30,
                        color: Color(0xFF004B87),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Begin your journey with the quiet\nauthority of precision',
                  ),
                  SizedBox(height: 24),

                  // FIRST INPUT FIELD//

                  Text('FULL NAME'),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter your Name',
                      hintStyle: TextStyle(
                        color: Color(0xFF9CA3AF),
                        fontSize: 14,
                      )
                    ),
                  ),
                  SizedBox(height:24),

                  //SECOND INPUT FIELD

                  Text('EMAIL ADDRESS'),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
