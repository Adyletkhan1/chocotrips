import 'package:flutter/material.dart';

class TripLocationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(children: <Widget>[
            Image.asset("assets/image_02.png")
            const ListTile(
              title: Text('Парк имени 28-ми гвардейцев-панфиловцев'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
          ]),
        ],
      ),
    );
  }
}
