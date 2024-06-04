import 'package:flutter/material.dart';

class ProdactModel {
  final int id;
  final String price;
  final String image;
  final String title;
  final String description;
  final RateingModel rate;

  ProdactModel({
    required this.id,
    required this.price,
    required this.image,
    required this.title,
    required this.description,
    required this.rate,
  });
  factory ProdactModel.fromjson(jsondata) {
    return ProdactModel(
        id: jsondata['id'],
        price: jsondata['price'],
        image: jsondata['image'],
        title: jsondata['title'],
        description: jsondata['description'],
        rate: RateingModel.fromjson(jsondata['rate']));
  }
}

class RateingModel {
  final int count;
  final String rate;
  RateingModel({required this.count, required this.rate});
  factory RateingModel.fromjson(jsondata) {
    return RateingModel(
        count: jsondata['rating']['count'], rate: jsondata['rating']['rate']);
  }
}
