import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:new_ecomerce/all_list/easyloading_setting.dart';
import 'ecomerce_app/home_screen.dart';
import 'ecomerce_app/product_seeMore.dart';

void main() {
  EasyLoadingSetting().setting();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      builder: EasyLoading.init(),
    );
  }
}
