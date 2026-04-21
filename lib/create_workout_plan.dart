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
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu, color: Colors.greenAccent,),
          centerTitle: true,
          title: Text('VELOCITY', style: TextStyle(color: Colors.greenAccent.shade700, fontWeight: FontWeight(800))),
          actions: [
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage('images/avatar_photo.jpg'),
            )
          ],
        ),
        body:Container(
          decoration: BoxDecoration(color:Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(// THIS IS THE COLUMN HOLDING EVERYTHING
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(      // THIS IS THE HEADER ROW
                  children: [
                    Expanded(child: Text('New Workout',style: TextStyle(color:Colors.white, fontSize: 36),)),
                    TextButton(
                        onPressed:(){},
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.white24,
                          ),
                        ),
                        child: Text('Draft', style: TextStyle(color:Colors.greenAccent.shade700, fontSize: 14),)
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text('Design your custom training protocol', style: TextStyle(color:Colors.white24, fontSize: 16)),

                // STARTING FIRST CONTAINER

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PROTOCOL NAME', style: TextStyle(color:Colors.white24),),
                        SizedBox(height: 8),

                        // FIRST FORM FIELD

                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Color(0xFF1E201C),
                            filled: true,
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'e.g.,Upper Body Power'),


                          ),


                      ],
                    )
                  ),
                )

              ],
            ),
          ),
        )
          
      )
    );
  }
}