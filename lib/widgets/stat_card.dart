

import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String value;
  final String metric;


  StatCard(
      {  required this.subtitle, required this.value, required this.metric, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container( // LEFT CARD
        decoration: BoxDecoration(color: Color(0xFF121411)),
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontFamily: 'Grotesk',
                    letterSpacing: 1.4,
                    color: Color(0xFFABABA6)),),
                Text(subtitle, style: TextStyle(fontFamily: 'Grotesk',
                    letterSpacing: 1.4,
                    color: Color(0xFFABABA6)),),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(value,
                  style: TextStyle(fontSize: 32, color: Color(0xFFFDFCF7)),),
                SizedBox(width: 7),
                Text(metric)
              ],
            ),
          ],
        )
    );
  }
}

