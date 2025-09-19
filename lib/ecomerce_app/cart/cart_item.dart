import 'dart:developer';

import 'package:flutter/material.dart';

import '../../all_list/cartList.dart';
import '../widget/all_widget.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Shopping cart",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: ListView.builder(
          itemCount: CartList.length,
          itemBuilder: (context, index) {
            final items = CartList[index];
            return CustomCartshowitem(
              quantity: quantity,
              image: "${items.image1}",
              details: "${items.image1}",
              name: "${items.image1}",
              price: items.price,

              qntplus: () {
                quantity++;
                setState(() {});
              },
              qntminus: () {
                quantity--;
                setState(() {});
              },
            );
          },
        ),
      ),
    );
  }
}
