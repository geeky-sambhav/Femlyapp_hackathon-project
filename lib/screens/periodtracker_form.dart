import 'package:flutter/material.dart';
import 'package:mad_project/database/user_database.dart';
import 'package:mad_project/modals/user.dart';
import 'package:hexcolor/hexcolor.dart';

class PeriodTrackerForm extends StatefulWidget {

  AppUser appUser = AppUser();
  PeriodTrackerForm({this.appUser});

  @override
  _PeriodTrackerFormState createState() => _PeriodTrackerFormState();
}

class _PeriodTrackerFormState extends State<PeriodTrackerForm> {

  AppUser tempUser = AppUser();

  String mLength = "1";
  String pLength = "28";
  final List<String>listItem =<String>["1","2","3","4","5","6","7","8","9"];
  DateTime dt = DateTime.now();
  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    tempUser = widget.appUser;
    mLength = tempUser.menstrualLength.toString()??"1";
    pLength = tempUser.periodLength.toString()??"28";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SafeArea(
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Update Menstrual Details', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Divider(
                        color: HexColor("#734acc"),
                        height: 10,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: HexColor("#734acc"), width: 2.0),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Menstrual Length",style: TextStyle(fontSize: 20),),

                          DropdownButton(
                            style: TextStyle(color: Colors.black),
                            // dropdownColor: Colors.purpleAccent[100],
                            isDense: false,
                              hint: Text('Select value'),
                              value: mLength,
                              onChanged: (newValue) {
                                setState(() {
                                  mLength = newValue;
                                });
                              },
                              items: listItem.map((valueItem){
                                return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem+" days",),
                                );
                              }).toList(),
                          ),

                      ],
                    ),
                    ),
                  ),
                    SizedBox(height: 10,),
                    Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color:HexColor("#734acc"), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Period Length",style: TextStyle(fontSize: 20),),

                            DropdownButton(
                              hint: Text('Select value'),
                              value: pLength,
                              onChanged: (newValue) {
                                setState(() {
                                  pLength = newValue;
                                });
                              },
                              items: List.generate(10, (index) {
                                return DropdownMenuItem(
                                  value: (index+25).toString(),
                                  child: Text((index+25).toString()+" days",),
                                );
                              }).toList(),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: HexColor("#734acc"), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Last Menstruation:",style: TextStyle(fontSize: 20),),
                            ElevatedButton(
                              //TODO:1 update me
                                style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(255, 244, 13, 179),

                                ),
                                child: Text(_dateTime == null ? '${DateTime.now().day.toString()}/${DateTime.now().month.toString()}/${DateTime.now().year.toString()}': '${_dateTime.day.toString()}/${_dateTime.month.toString()}/${_dateTime.year.toString()}'),
                                onPressed: (){
                                  showDatePicker(
                                      context: context,
                                      initialDate: _dateTime == null ?  DateTime.now() : _dateTime,
                                      firstDate: DateTime(2020),
                                      lastDate: DateTime(2030)
                                  ).then((date) {
                                    setState(() {
                                      _dateTime = date;
                                  });
                                  });
                                }),
                          ],
                        ),

                        ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 244, 13, 179),

                      ),
                      onPressed: () {
                        if(_dateTime!=null )
                          tempUser.lastMenstruation.add(_dateTime);
                        UserDatabase(uid: tempUser.uid).updateMenstrualDetails(int.parse(mLength), int.parse(pLength),tempUser.lastMenstruation);
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('  Save Changes  ', style: TextStyle(fontSize: 20),),
                      ),
                    ),
              ],
          ),
      ),
            ),
    );
  }
}
