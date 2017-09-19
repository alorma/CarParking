import 'package:car_parking/app.dart';
import 'package:flutter/material.dart';
import 'package:car_parking/data/cars_injection.dart';

void main() {
  CarsListInjector.configure(Origin.MOCK);
  runApp(new CarsParkingApp());
}
