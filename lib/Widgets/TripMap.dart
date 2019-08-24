import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Views/Main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TripMap extends StatefulWidget {
  @override
  State<TripMap> createState() => TripMapState();
}

class TripMapState extends State<TripMap> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(43.2593256, 76.9542979),
    zoom: 14,
  );
  static final currentMarker = Marker(
      markerId: MarkerId("1"),
      position: LatLng(43.2589456, 76.955625),
      infoWindow: InfoWindow(title: "Мемориал Славы", snippet: "Место назначения"), visible: true);
  static final prevMarker = Marker(
      markerId: MarkerId("2"),
      position: LatLng(43.2588094, 76.953456),
      infoWindow: InfoWindow(title: "Вознесенский собор", snippet: "Предыдущая локация"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapToolbarEnabled: false,
        zoomGesturesEnabled: true,
        rotateGesturesEnabled: false,
        scrollGesturesEnabled: false,
        tiltGesturesEnabled: false,
        compassEnabled: false,
        myLocationEnabled: true,
        mapType: MapType.normal,
        markers: Set.of([currentMarker, prevMarker]),
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 90.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(title: "Choco Trips")),
            );
          },
          child: Icon(Icons.close),
          mini: true,
        ),
      ),
    );
  }
}
