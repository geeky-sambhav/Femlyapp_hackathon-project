import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'video_section.dart';

class Spirituality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 238, 238, 238)),
        flexibleSpace: Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [
                               
                                Color.fromRGBO(115, 74, 204, 1),
                                Color.fromRGBO(115, 74, 204, 1),
                             
                              ]
                            )
                          ),),
        title: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text('Spirituality', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontFamily: "fredoka-one",fontSize: 22,),),
        ),
    
      ),
        body: spirituality(),)
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class spirituality extends StatelessWidget {
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
                                image: AssetImage("assets/images/spiritual1.jpg")),
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
                          launch("https://www.youtube.com/watch?v=Kn4dK_kYUEo");
                        },
                        child: Text("Basic Meditation Session By Sandeep Maheshwari I How to Meditate for Beginners I Hindi",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/spiritual2.jpg")),
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
                              "https://www.youtube.com/watch?v=fdHjqVEQvLw");
                        },
                        child: Text(
                            "How Do You Get Started With Spirituality? | Sadhguru",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/spiritual3.jpg")),
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
                              "https://www.youtube.com/watch?v=tYjYL448-yY&t=11s");
                        },
                        child: Text(
                            "Does God exist? | J. Krishnamurti",
                            textAlign: TextAlign.center),
                      ),

  Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/spiritual4.jpg")),
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
                              "https://www.youtube.com/watch?v=TS74VDHyia8&t=572s");
                        },
                        child: Text(
                            "1 of 26 - Ashtavakra Gita by Sandeep Maheshwari I Hindi",
                            textAlign: TextAlign.center),
                      ),

 Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/spiritual5.jpg")),
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
                              "https://www.youtube.com/watch?v=X-idP23bHCg&t=1148s");
                        },
                        child: Text(
                            "A gift of Love",
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
