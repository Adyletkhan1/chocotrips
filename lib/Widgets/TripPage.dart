import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/TripLocationCard.dart';

import 'TripMap.dart';

class TripPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .35,
              color: Colors.blue,
              child: TripMap(),
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .65,
              color: Colors.white,
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .29,
              right: 20.0,
              left: 20.0),
          child: new Container(
            width: MediaQuery.of(context).size.width,
            child: TripLocationCard(),
          ),
        )
      ],
    );
  }
}
