import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Views/Main.dart';
import 'Widgets/TripPage.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MaterialApp(
  home: MyHomePage(title: "Choco Trips"),
//    home: TripPage(),
    debugShowCheckedModeBanner: false,
  ));
}
