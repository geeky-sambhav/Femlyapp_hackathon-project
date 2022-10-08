import 'package:flutter/material.dart';
import 'package:mad_project/screens/empowerment.dart';
import 'package:mad_project/screens/hygiene.dart';
import 'package:mad_project/screens/depression.dart';
import 'package:mad_project/screens/inspiration.dart';
import 'package:mad_project/screens/routines.dart';
import 'package:mad_project/screens/spirituality.dart';
import 'package:mad_project/screens/workouts.dart';
import 'package:glassmorphism/glassmorphism.dart'; 
import 'package:mad_project/screens/depression.dart';
import 'package:mad_project/screens/affirmation.dart';
class VideoSection extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      
      home: Scaffold(  
           appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 238, 238, 238)),
        flexibleSpace: Container(
                          decoration:BoxDecoration(
                           
                            gradient: LinearGradient(
                              colors: [
                               
                                Color.fromRGBO(115, 74, 204, 1),
                                Color.fromRGBO(115, 74, 204, 1),
                             
                              ]
                            )
                          ),),
        title: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text('Video Section', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontFamily: "fredoka-one",fontSize: 22,),),
        ),

      ),
        body: Video_Section(),  
      ),  
    );  
  }  
}  
  
/// This is the stateless widget that the main application instantiates.  
class Video_Section extends StatelessWidget {  
  Video_Section({Key key}) : super(key: key);  
  @override  
 Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        
decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
              ],
            )
          ),

        child: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[

    new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Routines()),
  );
} ,
        child: Container(
        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Routines.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
        ),
    ),


 

new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Workouts()),
  );
} ,
        child: Container(
          
          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Workouts.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
     
        ),
    ),

new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Depression()),
  );
} ,
        child: Container(
          
        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Depression.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
        ),
    ),


new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Affirmation()),
  );
} ,
        child: Container(
          
          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Affirmations.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
        ),
    ),


new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>Spirituality()),
  );
} ,
        child: Container(
          
          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Spirituality.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
        ),
    ),

new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>Hygiene()),
  );
} ,
        child: Container(
          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/PersonalHygiene.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
           
    ),

        ),


new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>Empowerment()),
  );
} ,
        child: Container(
          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Empowerment.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
        ),
    ),



new GestureDetector(
        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>Inspiration()),
  );
} ,
        child: Container(
          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Inspirational.png")),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          )
        ),
    ),



  ],
),
      )
    );
  }
}