import 'dart:async';

import 'package:car_parking/cars/cars_list.dart';
import 'package:flutter/material.dart';

import 'themes.dart';

class CarsParkingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Car Parking',
        theme: Theme.of(context).platform == TargetPlatform.iOS ? kIOSTheme : kAndroidTheme,
        routes: {
          CarsList.routeName: (BuildContext context) => new CarsList(),
        });
  }
}
/*
import 'package:location/location.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return new CarsList();
  }
}
}
class _MyHomePageState extends State<MyHomePage> {
  var currentLocation = <String, double>{};
  var location = new Location();

  @override
  Widget build(BuildContext context) {
    checkLocationUpdates();
    obtainLocation();

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Location"),
        ),
        floatingActionButton: new FloatingActionButton(
            child: new Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {}),
        body: isLocationValid() ? _buildWithLocation(context) : _buildWithNoLocation(context));
  }

  bool isLocationValid() {
    return currentLocation != null &&
        currentLocation["latitude"] != null &&
        currentLocation["longitude"] != null;
  }

  Future obtainLocation() async {
    try {
      currentLocation = await location.getLocation;
      onLocationUpdated(currentLocation);
    } catch (PlatformException) {
      currentLocation = null;
    }
  }

  void onLocationUpdated(Map<String, double> currentLocation) {
    setState(() {
      this.currentLocation = currentLocation;
    });
  }

  void checkLocationUpdates() {
    location.onLocationChanged.listen((Map<String, double> currentLocation) {
      onLocationUpdated(currentLocation);
    });
  }

  Widget _buildWithLocation(BuildContext context) => new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Your location:',
              style: Theme.of(context).textTheme.display1,
            ),
            new Image(image: new NetworkImage(mapImageUrl(currentLocation))),
            new Text(currentLocation["latitude"].toString(),
                style: new TextStyle(color: Colors.red)),
            new Text(currentLocation["longitude"].toString(),
                style: new TextStyle(color: Colors.blue)),
          ],
        ),
      );

  Widget _buildWithNoLocation(BuildContext context) => new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'No Location:',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      );

  String mapImageUrl(Map<String, double> currentLocation) {
    String location =
        currentLocation["latitude"].toString() + "," + currentLocation["longitude"].toString();
    return "https://maps.googleapis.com/maps/api/staticmap?"
        "center=" +
        location +
        "&zoom=16&size="
        "600x300&maptype=roadmap&key=AIzaSyBTMhkPmC0Ad8OeHO7KwH1MvfCUXZKNPZM";
  }
}
*/
