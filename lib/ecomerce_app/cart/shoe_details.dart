import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:new_ecomerce/all_list/cartList.dart';
import 'package:new_ecomerce/all_list/shoe_item_list.dart';

import '../widget/all_widget.dart';
import 'cart_item.dart';

class ShoeDetails extends StatefulWidget {
  const ShoeDetails({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.details,
    required this.name,
    required this.price,
    required this.index,
  });
  final String image1;
  final String image2;
  final String image3;
  final String details;
  final String name;
  final double price;
  final int index;

  @override
  State<ShoeDetails> createState() => _ShoeDetailsState();
}

class _ShoeDetailsState extends State<ShoeDetails> {
  @override
  Widget build(BuildContext context) {
    List images = [widget.image1, widget.image2, widget.image3];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Details",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            items: images
                .map(
                  (c) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("${c}"),
                      ),
                    ),
                  ),
                )
                .toList(),

            options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(milliseconds: 500),
              enlargeFactor: 0.5,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 5),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Text(
                        "${widget.name}",
                        maxLines: 3,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "\$${widget.price}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  maxLines: 5,
                  "${widget.details}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Available size:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Chip(label: Text("32"), backgroundColor: Colors.white),
                    Chip(label: Text("36"), backgroundColor: Colors.white),
                    Chip(label: Text("42"), backgroundColor: Colors.white),
                    Chip(label: Text("44"), backgroundColor: Colors.white),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 80,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Colors.black.withOpacity(0.12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "\$${widget.price}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                CustomAddtoCard(
                  ontap: () async {
                    var a = shoeItems[widget.index];
                    EasyLoading.show();
                    await Future.delayed(Duration(seconds: 1));
                    cartItems.add(a);
                    EasyLoading.showSuccess("Cart added successfully");
                    setState(() {});
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (c) => CartItem()),
                    );
                    log("================$cartItems");
                  },
                  bkcolor: Colors.blue,
                  txtcolor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
