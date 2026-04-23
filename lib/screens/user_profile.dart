import 'package:flutter/material.dart';

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
      body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
            child: Column(
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
                )
              ],


            ),
          )
      )





    );
  }
}
