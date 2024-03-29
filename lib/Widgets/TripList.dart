import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TripCard.dart';
import 'TripPage.dart';

class TripList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              elevation: 7,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                child: TripCard(
                    text: "Парк имени 28-ми панфиловцев",
                    photo: "assets/28.png"),
                height: 200,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TripPage()),
              );
            },
            child: Card(
                elevation: 7,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Container(
                  child: TripCard(
                      text: "Парк Первого президента",
                      photo: "assets/prez.png"),
                  height: 200,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              elevation: 7,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                child: TripCard(
                    text: "Высокогорный каток Медео",
                    photo: "assets/medeo.png"),
                height: 200,
              )),
        ),
      ],
    );
  }
}
