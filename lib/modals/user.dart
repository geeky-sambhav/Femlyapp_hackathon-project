import 'request.dart';

class AppUser{

  String uid;
  String name;
  String address;
  String phoneNumber;
  int menstrualLength;
  int periodLength;
  List<DateTime>lastMenstruation;
  List<String>requestIds;

  AppUser({this.uid,this.name,this.phoneNumber,this.address,this.menstrualLength, this.periodLength, this.lastMenstruation,this.requestIds});

}