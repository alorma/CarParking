import 'package:car_parking/data/cars_repository.dart';
import 'package:car_parking/data/cars_repository_firebase.dart';
import 'package:car_parking/data/cars_repository_mock.dart';

enum Origin { MOCK, PROD }

class CarsListInjector {
  static final CarsListInjector _singleton = new CarsListInjector._internal();
  static Origin _origin;

  static void configure(Origin origin) {
    _origin = origin;
  }

  factory CarsListInjector() {
    return _singleton;
  }

  CarsListInjector._internal();

  CarsRepository get carsRepository {
    switch (_origin) {
      case Origin.MOCK:
        return new CarsRepositoryMock();
      default:
        return new CarsRepositoryFirebase();
    }
  }
}
