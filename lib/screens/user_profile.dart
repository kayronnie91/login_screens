import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:workout_tracker/widgets/stat_card.dart';
import 'package:workout_tracker/widgets/achievements_card.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UserProfile(),
  ));
}

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),

      appBar: AppBar(
        backgroundColor: Color(0xFF121411),
        leading: Icon(Icons.menu_outlined, size: 24 ,color:Color(0xFF9CA3AF)),
        centerTitle: true,
        title: Text('VELOCITY', style: TextStyle(fontFamily: 'Lexend', color: Color(0xFFBFFF00), fontSize: 24, letterSpacing: 2.4),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:16.0),
            child: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage('images/avatar_photo.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child:Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius:48,
                        child: Image.asset('images/sign_up.jpg'),
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text('ALEX CHEN', style:TextStyle(fontSize: 30, fontFamily: 'Lexend', color: Color(0xFFFDFCF7))),
                          Text('ELITE MEMBER', style: TextStyle(fontSize: 14, fontFamily: 'Grotesk', color: Color(0xFFABABA6), letterSpacing: 1.4)),
                        ]
                      )
                    ],
                  ),
                  SizedBox(height: 32),
        
                  Row(
                    children: [
                      Expanded(
                        child: Container( // left card container
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(color:Color(0xFF121411)),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('WORKOUTS', style: TextStyle(fontFamily: 'Grotesk', letterSpacing: 1.4, color:Color(0xFFABABA6)),),
                                  Text('COMPLETE',style: TextStyle(fontFamily: 'Grotesk', letterSpacing: 1.4, color:Color(0xFFABABA6)),),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text('342', style: TextStyle(color:Color(0xFFEAFFB8), fontSize: 32, fontFamily: 'Lexend', fontWeight: FontWeight(800)),),
                                  SizedBox(width: 7),
                                  (Image.asset('icons/dumbell.png'
                                      , height: 32, width: 32)),
                                ],
                              ),
                            ],
                          )
                        ),
                      ),
        
        
                      SizedBox(width: 20),
        
        
                      Expanded(
                        child: Container( // right card container
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(color:Color(0xFF121411)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('TOTAL VOLUME',style: TextStyle(fontFamily: 'Grotesk', letterSpacing: 1.4, color:Color(0xFFABABA6)),),
                                  Text('(LBS)',style: TextStyle(fontFamily: 'Grotesk', letterSpacing: 1.4, color:Color(0xFFABABA6)),),
                                ],
                              ),
                              SizedBox(height: 10),

                              Row(
                                children: [
                                  Text('1.2M', style: TextStyle(color:Color(0xFFFF7351), fontSize: 32, fontWeight: FontWeight(800), fontFamily: 'Lexend')),
                                  SizedBox(width: 7),
                                  Icon(Icons.scale, size:20, color: Color(0xFFABABA6),)
                                ],
        
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
        
                  // PHYSICAL STATS
        
        
                  SizedBox(height: 40),
                  SizedBox(
                    child: Text('PHYSICAL STATS', style: TextStyle(fontSize: 20, color: Color(0xFFFDFCF7), fontFamily: 'Lexend'),),
                  ),
                  SizedBox(height: 24),
        
                  // THIRD SECTION - STAT CARDS
        
                  Row(
                    children: [
                      Expanded(
                        child: StatCard(title: 'CURRENT', subtitle: 'WEIGHT', value: '185', metric: 'LBS') // left card
                      ),
                      SizedBox(width:10),
        
                      Expanded(
                        child: StatCard(title: 'BODY',subtitle: 'FAT', value: '12.5', metric: '%') // right card
                      ),
        
                    ],
                  ),
        
                  SizedBox(height: 40),
        
                  // ACHIEVEMENTS
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ACHIEVEMENTS', style: TextStyle(fontSize: 20, fontFamily: 'Lexend', color: Color(0xFFFDFCF7)),),
                      Text('VIEW ALL', style: TextStyle(fontSize: 12, fontFamily: 'Grotesk', color: Color(0xFFEAFFB8)),)
                    ],
                  ),

                  //THIRD SECTION LIST VIEW
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AchievementsCard(imagepath: 'icons/earlybird.png', title: 'Early Bird', subtitle: '50 AM Workouts'),
                        AchievementsCard(imagepath: 'icons/consistency.png', title: 'Consistency', subtitle: '30 Day Streak'),
                        AchievementsCard(imagepath: 'icons/progress.png', title: 'Progress', subtitle: '30% Improvement'),
                      ],
                    
                    
                    ),
                  )


        
                ], // END OF MAIN COLUMN HOLDING EVERYTHING
              ),
            )
        ),
      )





    );
  }
}
