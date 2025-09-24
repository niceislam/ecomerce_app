import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:new_ecomerce/model/shoe_database.dart';
import 'package:new_ecomerce/search_app/model/shoeModel.dart';

import '../api_data/database.dart';

class ShoeController {
  List<MedicineModelData> Itemfromcontroller = [];
  Future<List<MedicineModelData>> shoeModelFun() async {
    await Future.delayed(Duration(seconds: 3));
    for (dynamic i in shoeDatabase().ShoeData) {
      var model = MedicineModelData.fromJson(i);
      Itemfromcontroller.add(model);
    }
    return Itemfromcontroller;
  }
}
