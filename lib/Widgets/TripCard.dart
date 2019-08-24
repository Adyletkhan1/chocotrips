import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TripCard extends StatelessWidget {
  final String text;
  final String photo;
  double rating;
  TripCard({Key key, this.text, this.photo, this.rating = 5}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(photo),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter),
        ),
        child: Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 32, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRatingChanged: (v) {
                              this.rating = v;
                            },
                            starCount: 1,
                            rating: this.rating,
                            size: 24.0,
                            color: Colors.white,
                            borderColor: Colors.green,
                            spacing:0.0
                        ),
                        Text(" ${(Random().nextDouble()+4).toStringAsFixed(2) }", style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),

                    Icon(Icons.favorite, color: Colors.red),
                  ],
                ),
              ],
            ),
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
