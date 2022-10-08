import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mad_project/modals/user.dart';
import 'package:mad_project/screens/periodtracker_form.dart';
import 'package:mad_project/screens/userInfo.dart';
import 'package:mad_project/services/auth.dart';
import 'package:provider/provider.dart';
import  'package:table_calendar/table_calendar.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime  _selectedDay;
  int color=-1;
  
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser>(context) ??
        AppUser(
            uid:"0",
            name: "",
            address: "",
            phoneNumber: "0000000000",
            periodLength: 0,
            menstrualLength: 0,
            lastMenstruation: [],
            requestIds: []
        );
    return Scaffold(
      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
           //padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
          children: [
            UserAccountsDrawerHeader(
             // margin: EdgeInsets.symmetric(vertical: 5.0),
              otherAccountsPictures: [
                CircleAvatar(
                  child: IconButton(
                    icon: Icon(Icons.edit),color: Colors.white, onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (_) => FormPage(appUser: user,)));
                  },),

                )
              ],
              accountName: Text(user.name, style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold,fontFamily: "Uncial")),
              accountEmail: Text(user.phoneNumber.toString(), style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold,)),
              currentAccountPicture: CircleAvatar(
                //radius: 70.0,
                child: Text(user.name[0], style: TextStyle(fontSize: 40.0,color: Colors.white,fontFamily: "Uncial")),

              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Color.fromRGBO(115, 74, 204, 1),),
              title: Text('Change Menstrual details'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_) => PeriodTrackerForm(appUser: user,)));
              },
            ),
       
            ListTile(
              leading: Icon(Icons.logout, color: Color.fromRGBO(115, 74, 204, 1),),
              title: Text('Log Out'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                showDialog(context: context, builder: (_){
                  return AlertDialog(
                    title: Text('Do you want to Logout?'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    actions: [
                      MaterialButton(onPressed: (){
                        AuthService().signOut();
                        Navigator.pop(context);
                      }, child: Text('Yes'),color: Colors.purple[100],),
                      MaterialButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('No'),color: Color.fromRGBO(115, 74, 204, 1),)
                    ],
                  );
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.delete, color: Color.fromRGBO(115, 74, 204, 1),),
              title: Text('Delete Account'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                showDialog(context: context, builder: (_){
                  return AlertDialog(
                    title: Text('Do you want to Delete your account?'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    actions: [
                      MaterialButton(onPressed: (){
                        AuthService().deleteUser();
                        Navigator.pop(context);
                      }, child: Text('Yes'),color: Color.fromRGBO(115, 74, 204, 1),),
                      MaterialButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('No'),color: Color.fromRGBO(115, 74, 204, 1),),
                    ],
                  );
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: Color.fromRGBO(115, 74, 204, 1),),
              title: Text('Want to Contribute ?'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                try {
                  launch(
                      "https://github.com/mayank287/femly_teamDart");
                }catch(e){
                  print(e);
                }
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bug_report_sharp, color:Color.fromRGBO(115, 74, 204, 1),),
              title: Text('Report an Issue'),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                try {
                  launch(
                      "mailto:femly5811@gmail.com?subject=#Issue in Femly App");
                }catch(e){
                  print(e);
                }
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
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
          child: Text('Period Tracker', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontFamily: "fredoka-one",fontSize: 22,),),
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.0, bottom: 0),
                child: TableCalendar(
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                  ),
                  calendarBuilders: CalendarBuilders(
                    markerBuilder: (context,date,event){
                      if(event.isNotEmpty) {
                        color++;
                        int a = 1, b = 1;
                        if(color == 0)
                          {
                            a = 300;
                            b = 300;
                          }
                        else if(color == 1)
                        {
                          a = 300;
                          b = 200;
                        }
                        else if(color == 2)
                        {
                          a = 300;
                          b = 100;
                        }
                        else if(color == 3)
                        {
                          a = 300;
                          b = 50;
                        }
                        else if(color == 4)
                        {
                          a = 200;
                          b = 50;
                        }
                        else if(color == 5)
                        {
                          a = 100;
                          b = 50;
                        }
                        else
                        {
                          a = 50;
                          b = 50;
                        }
                        // int s = (code-f)%4;
                        return Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [
                                                            Color.fromRGBO(115, 74, 204, 1),
                                Color.fromARGB(255, 244, 13, 179),
                              ]
                            )
                          ),
                            margin: const EdgeInsets.all(4.0),
                            alignment: Alignment.center,
                            child: Text(
                              date.day.toString(),
                              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                            ));
                      }
                      color=-1;
                      return Container();
                    },
                    todayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 244, 13, 179),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                        )),

                  ),
                  firstDay: DateTime.utc(2019, 10, 16),
                  lastDay: DateTime.now().add(Duration(days: 1000)),
                  focusedDay:_focusedDay,
                  calendarFormat: _calendarFormat,
                  eventLoader: (day){
                    if(user.lastMenstruation.length != 0 && user.periodLength!=0 && user.menstrualLength!=0) {
                      DateTime dt = user.lastMenstruation[user.lastMenstruation.length-1].subtract(Duration(days:user.menstrualLength-1));
                      dt = dt.add(Duration(days:user.periodLength));
                      List<DateTime>dts = [];
                      while (dt.isBefore(DateTime.now().add(Duration(days: 900)))) {
                        dts.add(dt);
                        for(int i=1;i<user.menstrualLength;++i){
                          dts.add(dts[dts.length-1].add(Duration(days: 1)));
                        }
                        dt = dt.add(Duration(days: user.periodLength));
                      }
                      dynamic st = [];
                      for (DateTime time in dts) {
                        if (day.day == time.day && day.month == time.month &&
                            day.year == time.year) {
                          st.add("next period date");
                        }
                      }
                      return st;
                    }
                    return [];
                  },
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 20.0, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Menstrual Length :",style: TextStyle(fontSize: 20,
                          ),
                         ),
                          Spacer(flex:3,),
                          Card(child: Container(
                               decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [
                            
                              Color.fromRGBO(115, 74, 204, 1),
                                Color.fromARGB(255, 244, 13, 179),
                      // Color.fromARGB(255, 148, 228, 247),
                      //           Color.fromARGB(255, 101, 184, 202),
                      //       Color.fromRGBO(125, 97, 103, 1),
                      //       Color.fromRGBO(102, 63, 70, 1),
                      //       Color.fromRGBO(0, 166, 166, 1),
                      //           Color.fromRGBO(115, 74, 204, 1),
                      //           Color.fromRGBO(237, 210, 255, 1),
                              ]
                            )
                          ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                              child: Text("${user.menstrualLength} days",style: TextStyle(fontSize: 20, 
                               fontFamily: 'FredokaOne',color: Color.fromARGB(255, 255, 255, 255), ),),
                            ),
                          )),
                          // Spacer(flex: 1,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 20.0, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Period Length :',style: TextStyle(fontSize: 20),),
                          Spacer(flex:3,),
                          Card(child: Container(
                               decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [
                              
                               
                    Color.fromRGBO(115, 74, 204, 1),
                                Color.fromARGB(255, 244, 13, 179),
                                // Color.fromRGBO(115, 74, 204, 1),
                                // Color.fromRGBO(237, 210, 255, 1),
                              ]
                            )
                          ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                              child: Text("${user.periodLength} days",style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255), ),),
                            ),
                          )),
                          // Spacer(flex:1,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Last Menstruation :",style: TextStyle(fontSize: 20),),
                          Spacer(flex:3,),
                          Card(child: Container(
                               decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [
                           Color.fromRGBO(115, 74, 204, 1),
                                Color.fromARGB(255, 244, 13, 179),
                    // Color.fromARGB(255, 147, 141, 225),
                    //    Color.fromARGB(255, 126, 139, 214),
                                // Color.fromRGBO(2, 128, 144, 1),
                            // Color.fromRGBO(164, 194, 165, 1),
                            // Color.fromRGBO(2, 128, 144, 1),
                            // Color.fromRGBO(255, 211, 204, 1),
                                // Color.fromRGBO(255, 183, 176, 1),
                                // Color.fromRGBO(255, 183, 176, 1),
                                // Color.fromRGBO(115, 74, 204, 1),
                                // Color.fromRGBO(237, 210, 255, 1),
                              ]
                            )
                          ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                              child: Text(user.lastMenstruation.length==0?" ":'${user.lastMenstruation[user.lastMenstruation.length-1].day.toString()}/${user.lastMenstruation[user.lastMenstruation.length-1].month.toString()}/${user.lastMenstruation[user.lastMenstruation.length-1].year.toString()}',
                                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255), ),),
                            ),
                          )),
                          // Spacer(flex: 1)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );

  }
}
