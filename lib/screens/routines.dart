import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'video_section.dart';

class Routines extends StatelessWidget {
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
          child: Text('Routines', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontFamily: "fredoka-one",fontSize: 22,),),
        ),
        backgroundColor: Colors.yellow,
      ),
        body: Routine(),)
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class Routine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/routine.jpg")),
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
                          )),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(30, 7, 30, 30),
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          launch("https://www.youtube.com/watch?v=G8Fq1rL2nm0");
                        },
                        child: Text("The Ultimate Guide to Being 'THAT Girl'",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/routine3.jpg")),
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
                          )),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(30, 7, 30, 30),
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          launch(
                              "https://www.youtube.com/watch?v=Mk1DRQkObHc&feature=youtu.be");
                        },
                        child: Text(
                            "I Changed My BODY & My LIFE in 1 month. (Everything I Actually Eat & How I Train)'",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/skincare.jpg")),
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
                          )),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(30, 7, 30, 30),
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          launch(
                              "https://www.youtube.com/watch?v=i12qoFusE4w&feature=youtu.be");
                        },
                        child: Text(
                            "My Skincare Secret To Glow | Morning & Night Routine | TheSassThing'",
                            textAlign: TextAlign.center),
                      ),

  Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/routine4.jpeg")),
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
                          )),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(30, 7, 30, 30),
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          launch(
                              "https://www.youtube.com/watch?v=FAHlCzP-prU");
                        },
                        child: Text(
                            "MORNING ROUTINE 2021 | Healthy & Productive Habits",
                            textAlign: TextAlign.center),
                      ),

 Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/routine5.jpeg")),
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
                          )),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(30, 7, 30, 30),
                          minimumSize: Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          launch(
                              "https://www.youtube.com/watch?v=PN2McvPoOP0&feature=youtu.be");
                        },
                        child: Text(
                            "a week in my life // first days of college, many coffee shops | a realistic student vlog 👩🏻‍💻📚",
                            textAlign: TextAlign.center),
                      ),




                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
