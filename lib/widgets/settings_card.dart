import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final Icon iconpath;
  final String heading;
  final Icon? edgeicon;


  const SettingsCard({ this.edgeicon, required this.heading, required this.iconpath,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:Color(0xFF121411),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            iconpath,
            SizedBox(width: 16),
            Text(heading, style: TextStyle(fontSize: 16, fontFamily: 'Manrope', color: Color(0xFFFDFCF7))),
            Spacer(),
            edgeicon ?? SizedBox(),
          ],
        ),
      ),
    );
  }
}
