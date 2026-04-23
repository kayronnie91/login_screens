import 'package:flutter/material.dart';

void main() {
  runApp(const WorkoutApp());
}

class WorkoutApp extends StatefulWidget {
  const WorkoutApp({super.key});

  @override
  State<WorkoutApp> createState() => _WorkoutAppState();
}

class _WorkoutAppState extends State<WorkoutApp> {
  Color buttonColor = Colors.greenAccent;
  String startWorkout = 'START WORKOUT';

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
                            Row(
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


                  // STARTING SECOND CARD //

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xFF121411), borderRadius: BorderRadius.circular(12),
                    ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.menu_outlined, color:Colors.white, size:16),
                                SizedBox(width:12),
                                Image.asset('images/bench_press.jpeg',
                                width:48, height: 48),
                                SizedBox(width:12),


                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Barbell Bench Press', style:TextStyle(color:Colors.white, fontSize: 16)),
                                    Text('Chest * Compund',style: TextStyle(color:Colors.white24),),
                                  ],
                                ),
                                Spacer(),
                                Icon(Icons.close, color: Colors.white,)
                              ],
                            ),
                          ),

                          // SETS REPS TARGET LOAD ACTION


                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              decoration: BoxDecoration(color: Color(0xFF181A17)),
                              child:Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex:2,
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Text('SET', style: TextStyle(color:Colors.white24),),
                                              Text('REPS',style: TextStyle(color:Colors.white24),),
                                            ]),
                                        ),
                                        SizedBox(width:30),
                                        Expanded(
                                          flex:3,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('TARGET LOAD',style: TextStyle(color:Colors.white24),),
                                              Text('ACTION',style: TextStyle(color:Colors.white24),),
                                            ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(thickness: 0.3, endIndent: 20, indent: 20,),

                                  // SECOND ROW OF SECOND CARD

                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row( // Main row holding what is inside
                                      children: [ // children of the main row
                                        Expanded(
                                          flex: 2,
                                          child: Row( // child 1 of the main row
                                            children: [ // grouped number 1 and first form field
                                              SizedBox(width:28, child: Text('1', style: TextStyle(fontSize: 14, color: Colors.white),)),
                                              SizedBox(width: 10),


                                              SizedBox(width: 68,
                                                child: TextFormField(
                                                  initialValue: '8',
                                                  textAlign: TextAlign.center,
                                                  style:TextStyle(color:Colors.white),
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.black,
                                                    filled: true,
                                                    border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.zero,
                                                    ),
                                                  )
                                                ),
                                              ),
                                            ]
                                          ),
                                        ),


                                            SizedBox(width: 20,), // separated the child row


                                            Expanded(
                                              flex:3,
                                              child: Row( // second child row holding second input field and % symbol
                                                children: [
                                                  SizedBox(width: 68,
                                                    child: TextFormField(
                                                      initialValue: '75',
                                                      textAlign: TextAlign.center,
                                                      style:TextStyle(color:Colors.white),
                                                      decoration: InputDecoration(
                                                        fillColor: Colors.black,
                                                        filled:true,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.zero,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10),
                                                  SizedBox(width:10,child: Text('%', style: TextStyle(fontSize: 12, color: Colors.white))),
                                                ],
                                              ),
                                            ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  // END OF SECOND CARD //
                  SizedBox(height:30),

                  // START OF BUTTON
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                        ),
                        onPressed:(){
                          setState(() {
                            if (buttonColor == Colors.greenAccent){
                              buttonColor = Colors.white;
                              startWorkout = 'Lets do it';
                            }
                            else {
                            buttonColor = Colors.greenAccent;
                            startWorkout = 'START WORKOUT';
                            }
                          }
                          );
                        },
                        child: Text(startWorkout),
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
          
      )
    );
  }
}