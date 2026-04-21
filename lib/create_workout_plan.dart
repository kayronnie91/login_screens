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
        backgroundColor: Colors.black,
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
        body:Container( // THIS IS THE MAIN CONTAINER HOLDING EVERYTHING
          decoration: BoxDecoration(color:Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
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
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF121411), borderRadius: BorderRadius.circular(12),
                        ),
                      child:Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('PROTOCOL NAME', style: TextStyle(color:Colors.white24),),
                            SizedBox(height: 8),
              
                            // FIRST FORM FIELD
              
                            TextFormField(
                              style: TextStyle(color:Colors.white24, fontSize: 16),
                              decoration: InputDecoration(
                                fillColor: Color(0xFF1E201C),
                                filled: true,
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                labelText: 'e.g.,Upper Body Power'),
                              ),
                            SizedBox(height:24),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text('FOCUS', style: TextStyle(color:Colors.white),)),
                                  Expanded(child: Text('EST. DURATION', style: TextStyle(color:Colors.white),)),
                                ],
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Expanded(child:
                                 TextFormField(
                                   style:TextStyle(color:Colors.grey, fontSize: 16),
                                   decoration: InputDecoration(
                                     fillColor: Colors.black12,
                                     filled: true,
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(10),
                                     )
                                   ),
                                 ),
                                  ),

                                  SizedBox(width:15),

                                  Expanded(
                                    child: TextFormField(
                                      style:TextStyle(color:Colors.grey, fontSize: 16),
                                      decoration: InputDecoration(
                                        fillColor: Colors.black12,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(child: Text('Movement', style: TextStyle(color:Colors.white, fontSize: 28),)),
                      Icon(Icons.add, color: Colors.white,),
                      SizedBox(width: 4),
                      Text('Add Exercise', style: TextStyle(color: Colors.white, fontSize: 14),)
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.menu_outlined, color:Colors.white),
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        )
          
      )
    );
  }
}