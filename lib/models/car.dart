import 'package:car_rental_marketplace/models/price.dart';

class Car {
  final String id;
  final String name;
  final String location;
  final String vehicleClass;
  final String brand;
  final String model;
  final String carNumber;
  final PriceBundle priceBundle;

  Car(
      {required this.id,
      required this.name,
      required this.location,
      required this.vehicleClass,
      required this.brand,
      required this.model,
      required this.carNumber,
      required this.priceBundle});

  Car.fromMap(Map<String, dynamic> map)
      : this(
            id: map['id'],
            name: map['name'],
            location: map['location'],
            vehicleClass: map['vehicleClass'],
            brand: map['vehicleType'],
            model: map['model'],
            carNumber: map['carNumber'],
            priceBundle: PriceBundle.fromMap(map['priceBundle']));

  Map<String, dynamic> asMap() => {
        'id': id,
        'name': name,
        'location': location,
        'vehicleClass': vehicleClass,
        'brand': brand,
        'model': model,
        'carNumber': carNumber,
        'priceBundle': priceBundle.asMap()
      };
}
