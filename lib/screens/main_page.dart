import 'package:flutter/material.dart';
import 'package:mad_project/screens/faq.dart';
import 'package:mad_project/screens/home.dart';


import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


import 'self_defence_techniques.dart';
import 'video_section.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> pages = [
    Home(),
    SelfDefenceTechniques(),
    VideoSection(),
    Faq(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        curve: Curves.easeIn,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(fontFamily: "fredoka-one"),
            ),
            selectedColor: 
                                                            Color.fromRGBO(115, 74, 204, 1),
          ),
          
          
          SalomonBottomBarItem(
            icon: Icon(Icons.add_moderator_sharp),
            title: Text(
              "Self Defence",
              style: TextStyle(fontFamily: "fredoka-one"),
            ),
            selectedColor: 
                                                            Color.fromRGBO(115, 74, 204, 1),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.featured_video_rounded),
            title: Text(
              "Video Section",
              style: TextStyle(fontFamily: "fredoka-one"),
            ),
            selectedColor: 
                                                            Color.fromRGBO(115, 74, 204, 1),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.question_mark),
            title: Text(
              "Faq",
              style: TextStyle(fontFamily: "fredoka-one"),
            ),
            selectedColor: Color.fromRGBO(115, 74, 204, 1),
          ),


        
        ],
      ),
    );
  }
}
