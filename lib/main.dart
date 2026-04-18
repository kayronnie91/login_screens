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
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 27,
          ),
          child: Container(
            color: Colors.teal,
            child: const Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Begin your journey with the quiet authority of precision',
                  ),
                  SizedBox(height: 24),
                  Text('Full Name'),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Name',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
