import 'package:dots_indicator/dots_indicator.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/CardContent.dart';

import 'TripInfo.dart';
import 'TripPlan.dart';

class TripLocationCard extends StatefulWidget {
  @override
  _TripLocationCardState createState() => _TripLocationCardState();
}

class _TripLocationCardState extends State<TripLocationCard> {
  List<CardContent> contents = [CardContent("Hello")];
  int current = 0;

  _TripLocationCardState() {
    FirebaseDatabase.instance
        .reference()
        .child("trips")
        .child("1")
        .child("locations")
        .once()
        .then((DataSnapshot snapshot) {
      setState(() {
        print(snapshot.value);
        snapshot.value.forEach((element) =>
            this.contents.add(CardContent(element["name"])));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      child:
//      child: Column(
//        children: <Widget>[
          // style: Theme.of(context).textTheme.headline
          DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: null,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'План',
                ),
                Tab(text: 'Инфо'),
                Tab(text: 'Фото'),
              ],
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_left),
                    onPressed: () {
                      if (0 < this.current) {
                        setState(() {
                          this.current -= 1;
                        });
                      }
                    },
                  ),
                  Column(
                    children: <Widget>[
                      DotsIndicator(
                        dotsCount: contents.length,
                        position: current,
                        decorator: DotsDecorator(
                          spacing: const EdgeInsets.all(10.0),
                          activeColor: Colors.pinkAccent,
                        ),
                      ),
                      Text(contents[current].name)
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_right),
                    onPressed: () {
                      if (this.contents.length - 1 > this.current) {
                        setState(() {
                          this.current += 1;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              TripPlan(),
              TripInfo(),
              GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: <String>[
                    'https://upload.wikimedia.org/wikipedia/commons/3/3c/WWII_Monument_Feat%2C_Almaty.jpg',
                    'https://www.advantour.com/img/kazakhstan/almaty/panfilov-park/28panfilov-guardsmen2.jpg',
                    'https://media-cdn.tripadvisor.com/media/photo-s/01/60/2d/7b/panfilov-park-almaty.jpg',
                    'https://media-cdn.tripadvisor.com/media/photo-o/18/c6/b8/72/park-named-after-panfilov.jpg',
                  ].map((String url) {
                    return new GridTile(
                        child: new Image.network(url, fit: BoxFit.cover));
                  }).toList()),
            ],
          ),
        ),
      ),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text("Парк имени 28 гвардейцев-панфиловцев – это самый популярный парк отдыха в Алматы. Он был заложен в 70-е гг. XIX века на месте станичного кладбища, потому первоначально был назван Старокладбищенским парком. Парк представляет собой зеленую территорию в 18 га, разделенную ровными дорожками и аллеями, где произрастает смешанная лиственная роща многолетних дубов, карагачей, осин, кленов, тополей, сосен и елей."),
//          )
//        ],
//      ),
    );
  }
}
