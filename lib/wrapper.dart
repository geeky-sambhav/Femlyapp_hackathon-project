import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mad_project/screens/authentication_screens/reg.dart';
import 'package:mad_project/screens/home.dart';
import 'package:mad_project/screens/main_page.dart';
import 'package:mad_project/shared/loading.dart';
import 'package:provider/provider.dart';

import 'database/user_database.dart';
import 'modals/user.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {


  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    if(user == null){
      return Register();
    }
    return StreamProvider.value(
        value: UserDatabase(uid: user.uid,phone: user.phoneNumber).user,
        initialData: null,
      child: HomeWrapper(),
    );
  }
}

class HomeWrapper extends StatefulWidget {
  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  @override
  Widget build(BuildContext context) {
    AppUser user = Provider.of<AppUser>(context);
    return (user==null)?Loading():MainPage();
  }
}

