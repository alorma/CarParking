class Car {
  final String id;
  final String model;
  final String brand;

  final String image;

  const Car({this.id, this.model, this.brand, this.image});

  Car.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        model = map['model'],
        brand = map['brand'],
        image = map['image'];
}
