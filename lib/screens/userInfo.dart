import 'package:flutter/material.dart';
import 'package:mad_project/database/user_database.dart';
import 'package:mad_project/modals/user.dart';
import 'package:mad_project/shared/constants.dart';
class FormPage extends StatefulWidget {
  AppUser appUser = AppUser();
  FormPage({this.appUser});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  AppUser tempAppUser = AppUser();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tempAppUser = widget.appUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    Text(
                      'Update User Info:',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Divider(
                        color: Colors.purple[500],
                        height: 10,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      validator: (val) {
                        if (val.isEmpty) return "please enter your valid Name";
                        return null;
                      },
                      initialValue: widget.appUser.name != null
                          ? widget.appUser.name
                          : 'Your Name',
                      decoration: textInputDecoration.copyWith(
                        // hintText: 'Shop Name',
                        labelText: 'Your Name',
                      ),
                      onChanged: (val) {
                        setState(() {
                          tempAppUser.name = val;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val.isEmpty) return "please enter a valid shop address";
                        return null;
                      },
                      //enabled: false,
                      initialValue: widget.appUser.address != null
                          ? widget.appUser.address
                          : 'Address',
                      decoration: textInputDecoration.copyWith(
                        // hintText: 'Shop Name',
                        labelText: 'Your Address',
                      ),
                      onChanged: (val) {
                        setState(() {
                          tempAppUser.address = val;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                        color: Colors.white54,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.purple[500], width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(

                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(flex: 6,child: Text("Ph. No. : ${tempAppUser.phoneNumber.toString()}",maxLines: 2, style: TextStyle(fontSize: 20,letterSpacing: 1.2), )),
                                  //Spacer(flex: 2),
                                  Flexible(flex: 1,child: Icon(Icons.edit_off)),
                                  //Spacer(flex: 1,),
                                ],
                              )),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[200]
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          UserDatabase(uid: tempAppUser.uid)
                              .updateUserData(tempAppUser);
                          Navigator.pop(context);
                        }
                      },
                      child: Text('Save Changes', style: TextStyle(fontSize: 18) ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ));
  }
}
