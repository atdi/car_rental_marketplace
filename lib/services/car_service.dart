import 'dart:convert';
import 'package:car_rental_marketplace/exceptions/http_exception.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/car.dart';


class CarService with ChangeNotifier {
  List<Car> cars = [];
  CarService() {
    fetchCars();
  }

  fetchCars() async {
    var res = await http.get(Uri.parse('http://your-api-url.com/cars'));
    if (res.statusCode == 200) {
      Map<String, dynamic> items = json.decode(res.body);
      cars = items['data'].map((e) => Car.fromMap(e));
      notifyListeners();
    } else {
      throw HttpException('Failed to load cars');
    }
  }
}