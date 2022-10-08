import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'otp_verification_page.dart';

class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple[900],
                Colors.white,
              ],
            )),
          ),
          Center(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/otp.jpg'),
                  //   radius: 130,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   'SUV',
                      //   style: TextStyle(
                      //     fontFamily:'Uncial',
                      //     fontSize: 45,
                      //     // fontWeight: FontWeight.bold,
                      //       fontWeight: FontWeight.w900,
                      //       letterSpacing: 5.0
                      //     //color: Colors.white,

                      //   ),
                      // ),
                      CircleAvatar(
                        radius: 120,
                        backgroundImage: AssetImage('assets/logo.png'),
                        backgroundColor: Color.fromRGBO(0,0,0, 0),
                      ),
                      // Text(
                      //   'DHA',
                      //   style: TextStyle(
                      //     fontFamily:'Uncial',
                      //     fontSize: 45,
                      //     letterSpacing: 5.0,
                      //     fontWeight: FontWeight.w900,
                      //     //color: Colors.white,

                        // ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 8.0,
                    color: Color(0xfff3f6f3),
                    margin: EdgeInsets.all(25.0),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Your Phone!',
                             // textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Your Number',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 2.0,),
                          TextFormField(
                            controller: phoneController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 22,
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              icon: Text(
                                "+91",
                                style: TextStyle(
                                letterSpacing: 4.0,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'A 6-digit OTP will be sent via SMS to verify your mobile number',
                            style: TextStyle(fontFamily: "Signika",),
                          ),
                        ],

                      ),

                    ),
                  ),
                  SizedBox(height: 40,),
                  MaterialButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 8.0,
                    color: Colors.purple[900],
                    child: Text('  Continue  ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Future((){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpCodeVerificationScreen(phoneNumber:"+91"+phoneController.text)));
                      });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

