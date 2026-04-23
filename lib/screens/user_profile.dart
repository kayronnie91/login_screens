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





    );
  }
}
