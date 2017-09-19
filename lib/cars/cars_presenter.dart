import 'package:car_parking/data/car.dart';
import 'package:car_parking/data/cars_injection.dart';
import 'package:car_parking/data/cars_repository.dart';

class CarsPresenter {
  CarsRepository _repository;

  CarsListViewContract _view;

  CarsPresenter(this._view) {
    _repository = new CarsListInjector().carsRepository;
  }

  void loadCars() {
    assert(_view != null);
    _repository
        .fetch()
        .then((cars) => _view.onLoadCarsListComplete(cars))
        .catchError((onError) => _view.onLoadCarsListError());
  }
}

abstract class CarsListViewContract {
  void onLoadCarsListComplete(List<Car> items);

  void onLoadCarsListError();
}
