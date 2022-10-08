import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                 CircleAvatar(
                        radius: 120,
                        backgroundImage: AssetImage('assets/logo.png'),
                        backgroundColor: Color.fromRGBO(0,0,0, 0),
                      ),
             
              ],
            ),
            SizedBox(height: 40,),
            Center(
              child: SpinKitChasingDots(
                
                color: Color.fromRGBO(237, 210, 255, 1),
                size: 30.0,
                

              ),
            ),
          ],
        ),
      ),
    );
  }
}
