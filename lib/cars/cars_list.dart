import 'package:car_parking/cars/car_list_item.dart';
import 'package:car_parking/cars/cars_presenter.dart';
import 'package:car_parking/data/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarsList extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<StatefulWidget> createState() {
    return new _CarsListState();
  }
}

class _CarsListState extends State<CarsList> implements CarsListViewContract {
  CarsPresenter _presenter;

  List<Car> _list;

  _CarsListState() {
    _presenter = new CarsPresenter(this);
  }

  @override
  void initState() {
    super.initState();

    _list = new List();

    _presenter.loadCars();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("YOUR CARS"),
      ),
      body: new Container(
        child: _list.length > 0 ? _buildCarsList(_list) : _buildNoCars(),
      ),
    );
  }

  @override
  void onLoadCarsListComplete(List<Car> items) {
    setState(() {
      items.forEach((car) => _list.add(car));
    });
  }

  @override
  void onLoadCarsListError() {}

  Widget _buildCarsList(List<Car> list) {
    return new Container(
      child: new ListView.builder(
        itemBuilder: _buildCarItem,
        itemCount: _list.length,
      ),
    );
  }

  Widget _buildNoCars() {
    return new Center(
      child: new Text("No Cars"),
    );
  }

  Widget _buildCarItem(BuildContext context, int index) {
    return new CarListItem(_list[index]);
  }
}
