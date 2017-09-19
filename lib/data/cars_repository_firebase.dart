import 'dart:async';

import 'package:car_parking/data/car.dart';
import 'package:car_parking/data/cars_repository.dart';

class CarsRepositoryFirebase extends CarsRepository {
  @override
  Future<List<Car>> fetch() {
    return Future.any(new List(2));
  }
}
