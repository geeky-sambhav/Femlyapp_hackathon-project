import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'video_section.dart';

class Inspiration extends StatelessWidget {
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
          child: Text('Inspiration', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontFamily: "fredoka-one",fontSize: 22,),),
        ),
      ),
        body: inspiration(),)
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class inspiration extends StatelessWidget {
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
                                image: AssetImage("assets/images/inspo.jpg")),
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
                          launch("https://www.youtube.com/watch?v=VxW5D5VPg_0");
                        },
                        child: Text("Michelle Obama's Best Advice For Students | How To Succeed In Life",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/inspo2.jpg")),
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
                              "https://www.youtube.com/watch?v=Tuw8hxrFBH8");
                        },
                        child: Text(
                            "One of the Greatest Speeches Ever | Steve Jobs",
                            textAlign: TextAlign.center),
                      ),
                      Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/inspo3.jpg")),
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
                              "https://www.youtube.com/watch?v=SSV2ynRScQA");
                        },
                        child: Text(
                            "Jack Ma's life-changing advice for young people",
                            textAlign: TextAlign.center),
                      ),

  Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/inspo4.jpg")),
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
                              "https://www.youtube.com/watch?v=eDiA1p5DlLg&t=200s");
                        },
                        child: Text(
                            "World's Most Viewed Life Changing Video By Sandeep Maheshwari | Hindi",
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
