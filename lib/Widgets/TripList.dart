import 'package:flutter/material.dart';

import 'TripCard.dart';

class TripList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(child: Container(child: TripCard(text: "Парк имени 28-ми панфиловцев"), height: 200,)),
        Card(child: Container(child: TripCard(text: "text"), height: 200,)),
        Card(child: Container(child: TripCard(text: "text"), height: 200,))
      ],
    );
  }
}
