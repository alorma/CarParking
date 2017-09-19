import 'package:car_parking/data/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarListItem extends StatelessWidget {
  final Car car;

  const CarListItem(this.car);

  @override
  Widget build(BuildContext context) {
    NetworkImage networkImage = new NetworkImage(car.image);

    Image carImage = new Image(
      image: networkImage,
      height: 160.0,
      fit: BoxFit.fill,
    );

    TextStyle textStyle = Theme.of(context).textTheme.headline;
    TextStyle subtextStyle = Theme.of(context).textTheme.subhead;

    Text carModelText = new Text(
      car.model,
      style: textStyle,
    );

    Text carBrandText = new Text(
      car.brand,
      style: subtextStyle,
    );

    Widget infos = new Row(
      children: <Widget>[
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[carModelText, carBrandText],
        )
      ],
    );

    Container content = new Container(
      child: new Column(children: <Widget>[
        carImage,
        new Padding(padding: const EdgeInsets.only(left: 8.0, bottom: 8.0), child: infos),
      ]),
    );

    Card card = new Card(color: Colors.white, child: content, elevation: 4.0);
    EdgeInsets cardMargin = const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0);

    return new Container(margin: cardMargin, child: card);
  }
}
