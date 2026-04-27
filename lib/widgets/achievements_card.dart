import 'package:flutter/material.dart';

class AchievementsCard extends StatelessWidget {

  final String imagepath;
  final String title;
  final String subtitle;

  const AchievementsCard({required this.imagepath, required this.title, required this.subtitle,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 149,
          width: 128,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:Color(0xFF121411)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container( // circle container with icon in the middle
                height: 64,
                width: 64,
                decoration: BoxDecoration(shape: BoxShape.circle,
                color: Color(0xFF242722)),
                child: Center(child: Image.asset(imagepath, height: 27.5, width: 27.5,)),
              ),
              SizedBox(height: 12),
              Text(title, style: TextStyle(fontSize: 14, fontFamily: 'Manrope', color: Color(0xFFFDFCF7)),),
              SizedBox(height: 5),
              Text(subtitle, style:TextStyle(fontFamily: 'Grotesk', fontSize: 10, color: Color(0xFFABABA6))),
            ],
          ),
      ),
    );
  }
}

