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

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 238, 238, 238)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(115, 74, 204, 1),
            Color.fromRGBO(115, 74, 204, 1),
          ])),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'FAQ Section',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: "fredoka-one",
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: faq(),
    ));
  }
}

/// This is the stateless widget that the main application instantiates.
class faq extends StatelessWidget {
  faq({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(115, 74, 204, 1),
          Color.fromARGB(255, 244, 13, 179),
        ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Image(image: AssetImage('assets/images/1.png'))),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Image(image: AssetImage('assets/images/2.png'))),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Image(image: AssetImage('assets/images/3.png'))),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Image(image: AssetImage('assets/images/4.png'))),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Image(image: AssetImage('assets/images/5.png'))),
              ),
            ],
          ),
        ),
      ), // Column
    );
  }
}
