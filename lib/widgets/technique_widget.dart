import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:mad_project/screens/technique_demo.dart';
import '../constants.dart';
import '../model/technique_model.dart';

class TechniqueWidget extends StatelessWidget {
  const TechniqueWidget(
      {Key key, @required List<Technique> techniques, @required this.index})
      : _techniques = techniques,
        super(key: key);

  final List<Technique> _techniques;
  final int index;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openElevation: 0.0,
      closedElevation: 0.0,
      closedColor: Color.fromARGB(0, 217, 171, 171),
      openBuilder: (context, action) {
        return TechniqueDemo(
          technique: _techniques[index],
        );
      },
      closedBuilder: (context, action) {
        action() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TechniqueDemo(
                        technique: _techniques[index],
                      )));
        }

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 3.5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            borderOnForeground: true,
            child: InkWell(
              onTap: () => action(),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 16.0, top: 8.0, left: 8.0, bottom: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(_techniques[index].imgUrl,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 10.5,
                          width: MediaQuery.of(context).size.width / 4),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      _techniques[index].title,
                      textAlign: TextAlign.center,
                      style: kBoldText,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
