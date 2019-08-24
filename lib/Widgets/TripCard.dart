import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TripCard extends StatelessWidget {
  final String text;

  TripCard({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/28.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter),
        ),
        child: Container(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 32, right: 8),
            child: Text(text, style: TextStyle(color: Colors.white, fontSize: 22)),
          ),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0x00000000),
                  const Color(0xFF000000),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          width:  double.infinity,
        ),
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(top: 0.0));
  }
}
