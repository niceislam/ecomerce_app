import 'package:flutter/material.dart';
import 'package:new_ecomerce/model/shoe_database.dart';
import 'package:new_ecomerce/model/shoe_model.dart';

class ShoeItemDConverter {
  List<ShoeItemData> modelData = [];
  List<ShoeItemData> itemToModelconverter() {
    for (var i in ShoeItemDatabase().shoeItems) {
      var model = ShoeItemData.fromJson(i);
      modelData.add(model);
    }
    return modelData;
  }
}
