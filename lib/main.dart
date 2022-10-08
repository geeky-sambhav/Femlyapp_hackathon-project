import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mad_project/screens/authentication_screens/otp_verification_page.dart';
import 'package:mad_project/services/auth.dart';
import 'package:mad_project/wrapper.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      initialData: null,
      value: AuthService().authChange,
      child: MaterialApp(

        debugShowCheckedModeBanner:  false,
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 244, 13, 179),
         primarySwatch: Colors.purple,
            buttonColor: Color.fromARGB(255, 149, 48, 167),
         accentColor: Color.fromARGB(255, 145, 47, 162),
         fontFamily: 'Lato',
        ),
        home: Wrapper(),
      ),
    );
  }
}