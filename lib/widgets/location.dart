// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? position;

  fetchPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    String latitude;
    String longitude;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location Service is disabled');
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "You denied  the permission");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: "You denied the permission forever");
    }
    Position currentposition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentposition;
      latitude = currentposition.latitude.toString();
      longitude = currentposition.longitude.toString();
      print('Latitude: ${currentposition.latitude}');
      print('Longitude: ${currentposition.longitude}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeoLocation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position == null ? 'Location' : position.toString(),
                style: TextStyle(fontSize: 20)),
            ElevatedButton(
                onPressed: () {
                  fetchPosition();
                },
                child: Text('Get Location'))
          ],
        ),
      ),
    );
  }
}
