import 'package:flutter/material.dart';

import 'TripCard.dart';

class TripList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(child: Container(child: TripCard(text: "Парк имени 28-ми панфиловцев", photo: "assets/28.png"), height: 200,)),
        Card(child: Container(child: TripCard(text: "Парк Первого президента", photo: "assets/prez.png"), height: 200,)),
        Card(child: Container(child: TripCard(text: "Высокогорный каток Медео", photo: "assets/medeo.png"), height: 200,))
      ],
    );
  }
}
