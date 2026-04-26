import 'package:flutter/material.dart';

class AchievementsCard extends StatelessWidget {
  const AchievementsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149,
        width: 128,
      decoration: BoxDecoration(
        color:Color(0xFF121411)),
        child: Column(
          children: [
            Container( // circle container with icon in the middle
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
              color: Color(0xFF242722)),
              child: Center(child: Image.asset('icons/earlybird.png')),
            )
          ],
        ),
    );
  }
}
