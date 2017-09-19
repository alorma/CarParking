import 'dart:async';

import 'package:car_parking/data/car.dart';
import 'package:car_parking/data/cars_repository.dart';

class CarsRepositoryMock extends CarsRepository {
  @override
  Future<List<Car>> fetch() {
    return new Future.value(kCarsList);
  }
}

const kCarsList = const <Car>[const Car(), const Car()];
