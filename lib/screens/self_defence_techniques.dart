import 'package:flutter/material.dart';
import 'package:mad_project/constants.dart';
import 'package:mad_project/database/techniques.dart';
// import '../../assets/techniques.dart';
import 'package:mad_project/model/technique_model.dart';
import 'package:mad_project/widgets/technique_widget.dart';

class SelfDefenceTechniques extends StatefulWidget {
  static const String id = "SelfDefenceTechniques";
  @override
  _SelfDefenceTechniquesState createState() => _SelfDefenceTechniquesState();
}

class _SelfDefenceTechniquesState extends State<SelfDefenceTechniques> {
  List<Technique> _techniques = <Technique>[] ;

  @override
  void initState() {
    _techniques = getTechniques();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 238, 238, 238)),
        flexibleSpace: Container(
                          decoration:BoxDecoration(
                            
                            gradient: LinearGradient(
                              colors: [
                               
                                Color.fromRGBO(115, 74, 204, 1),
                                Color.fromRGBO(115, 74, 204, 1),
                             
                              ]
                            )
                          ),),
        title: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text('Self Defence Moves', style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontFamily: "fredoka-one",fontSize: 22,),),
        ),

      ),
        body: Container( decoration:BoxDecoration(
                           
                            gradient: LinearGradient(
                              colors: [
                                                            Color.fromRGBO(115, 74, 204, 1),
                                Color.fromARGB(255, 244, 13, 179),
                              ]
                            )
                          ),
          child: Container(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 4.0,),
                itemCount: _techniques.length,
                itemBuilder: (context, index) {
                  return TechniqueWidget(techniques: _techniques, index: index,);
                }),
          ),
        ));
  }
}
