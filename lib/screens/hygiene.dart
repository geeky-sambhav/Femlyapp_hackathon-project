import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'video_section.dart';

class Hygiene extends StatelessWidget {
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
          child: Text('Personal Hygiene', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontFamily: "fredoka-one",fontSize: 22,),),
        ),
      
      ),
        body: hygiene(),)
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class hygiene extends StatelessWidget {
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
                                image: AssetImage("assets/images/hygiene1.jpg")),
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
                          launch("https://www.youtube.com/watch?v=8DbKLUM9bBY");
                        },
                        child: Text("10 Feminine Hygiene Tips You NEED to Know",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/hygiene2.jpg")),
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
                              "https://www.youtube.com/watch?v=mofkb6ITkB8");
                        },
                        child: Text(
                            "Girl Talk : How To LEVEL UP YOUR FEMININE HYGIENE 2022 🙌👏‼️| ((MUST WATCH))",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/hygiene3.jpg")),
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
                              "https://www.youtube.com/watch?v=yZnqZzAjeFc");
                        },
                        child: Text(
                            "Full Body PERSONAL HYGIENE Tips Every Girl Should follow | Super Style Tips",
                            textAlign: TextAlign.center),
                      ),

 Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/hygiene4.jpg")),
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
                              "https://www.youtube.com/watch?v=3mfPsMebvRI");
                        },
                        child: Text(
                            "10 Personal Female Hygiene Products | Every Girl Must Have | Super Style Tips",
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
  