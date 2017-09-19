import 'dart:async';

import 'package:car_parking/data/car.dart';
import 'package:car_parking/data/cars_repository.dart';

class CarsRepositoryMock extends CarsRepository {
  @override
  Future<List<Car>> fetch() {
    return new Future.value(kCarsList);
  }
}

const kCarsList = const <Car>[
  const Car(
    id: "24",
    model: "Mazda 6",
    brand: "Mazda",
    image:
        "https://www.mazdausa.com/siteassets/vehicles/2017/cx-52/trims/grand-touring/2017-cx5-gt-soulred-profile-global.png?w=620",
  ),
  const Car(
    id: "24",
    model: "Toledo",
    brand: "Seat",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Seat_Toledo_front_20080227.jpg/280px-Seat_Toledo_front_20080227.jpg",
  )
];
