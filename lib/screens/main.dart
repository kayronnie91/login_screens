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

      home: Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.fromLTRB(24, 16, 60, 16),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 15.2,
                  color: Color(0xFF004B87),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Center(
                    child: Text(
                      'AUTHORITY',
                      style: TextStyle(
                        color: Color(0xFF004B87),
                        fontSize: 20,
                        height: 1.4,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // THIS IS WHERE THE BODY BEGINS //

        body: Padding( // This is the padding on the body so that we can push the container holding the column inside //
          padding: const EdgeInsets.symmetric(
            horizontal: 27,
            vertical: 27,
          ),
          child: SingleChildScrollView(
            child: Container( // this is the container holding the column //
              decoration: BoxDecoration(
                color: Color(0xFFF2F4F7),
                borderRadius: BorderRadius.circular(15),
              ),
            
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column( // this is the column holding all contents inside such as input fields //
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 30,
                          color: Color(0xFF004B87),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Begin your journey with the quiet\nauthority of precision', // This is how you break text //
                    ),
                    SizedBox(height: 24),
            
                    // FIRST INPUT FIELD//
            
                    Text('FULL NAME'),
                    SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter your Name',
                        hintStyle: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontSize: 14,
                        )
                      ),
                    ),
                    SizedBox(height:24),
            
                    //SECOND INPUT FIELD
            
                    Text('EMAIL ADDRESS'),
                    SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'name@company.com',
                        hintStyle: TextStyle(
                          color: Color(0xFF9CA3AF),
                          fontSize: 14,
                        )
                      ),
                    ),
            
                    SizedBox(height: 24),
                    //Third input field section //
                    Text('PASSWORD'),
                    SizedBox(height:8),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                            hintText: '********',
                            hintStyle: TextStyle(
                              color:Color(0xFF9CA3AF),
                            )
                      ),
                    ),
            
                    // Last input field //
                    
                    SizedBox(height:24),
                    Text('CONFIRM'),
                    SizedBox(height:8),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: '********',
                        hintStyle: TextStyle(
                          color:Color(0xFF9CA3AF),
                        )
                      ),
                    ),
                    SizedBox(height: 24),

                    // THIS IS WHERE WE PUT THE GOOGLE BUTTON //
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity,56),
                          backgroundColor: Color(0xFF003461),
                        ),
                        onPressed:(){},
                        child:Text('Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        )
                    ),
                    SizedBox(height:24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text('OR CONTINUE WITH'),
                        SizedBox(width: 12),      // Use a sized box with expanded //
                        Expanded( // The divider does not automatically get width so use expanded or we use indent and endent to control length //
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 24,),

                    // This is where I'll put the row with buttons //

                 Row(// This is the row holding the buttons //
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     FilledButton(
                       onPressed: (){},
                         style: OutlinedButton.styleFrom(
                           backgroundColor: Colors.white,
                           shape:RoundedRectangleBorder(
                             borderRadius: BorderRadiusGeometry.circular(10),
                           ),
                         ),

                         // FIRST GOOGLE BUTTON//

                       child:Row(
                         children: [
                           Icon(Icons.manage_accounts,
                           color:Color(0xFF003461),
                             size:18,
                           ),
                           SizedBox(width: 12),
                           Text('Google',
                           style:TextStyle(
                             fontSize: 14,
                             color:Colors.black,
                           )
                           ),
                         ],
                       )
                     ),

                     //Second (LinkedIn) Button //

                     FilledButton(
                         onPressed:(){},
                         style:FilledButton.styleFrom(
                           backgroundColor: Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadiusGeometry.circular(10),
                           ),
                         ),
                         child: Row(
                           children: [
                             Icon(Icons.work,
                             size:19,
                             color:Color(0xFF003461),
                             ),
                             SizedBox(width:12),
                             Text('LinkedIn',
                             style: TextStyle(
                               fontSize: 14,
                               color:Colors.black,
                             ),
                             )
                           ],
                         )
                     ),
                   ],
                 ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        SizedBox(width: 4),
                        Text('Sign In',
                          style: TextStyle(
                            color:Color(0xFF003461),
                              fontWeight: FontWeight(700),
                          ),

                        )
                      ],
                    )


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
