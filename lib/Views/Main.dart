import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/TripList.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: TripList(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Image(image: new AssetImage("assets/resting-cat-face-1.gif")),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Профиль'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Сохранённые'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('О приложении'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}