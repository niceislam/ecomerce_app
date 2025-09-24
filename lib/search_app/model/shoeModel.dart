import 'package:flutter/material.dart';

class MedicineModelData {
  String? image;
  String? name;
  String? regularPrice;
  String? price;
  String? details;

  MedicineModelData(
      {this.image, this.name, this.regularPrice, this.price, this.details});

  MedicineModelData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    regularPrice = json['regularPrice'];
    price = json['price'];
    details = json['details'];
  }

}

