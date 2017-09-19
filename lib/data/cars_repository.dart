import 'dart:async';
import 'car.dart';

abstract class CarsRepository {
  Future<List<Car>> fetch();
}

