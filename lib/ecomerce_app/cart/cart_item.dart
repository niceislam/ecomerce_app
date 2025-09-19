import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:new_ecomerce/all_list/cartItemColor.dart';

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
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CustomCartshowitem(
                cartColor: cartItemColor[index % cartItemColor.length],
                deleted: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Confirmation"),
                      content: Text("Are you delete this cart item ?"),
                      actions: [
                        InkWell(
                          onTap: () {
                            cartItems.removeAt(index);
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: Card(
                            color: Colors.red,
                            child: SizedBox(
                              height: 35,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "yes",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Card(
                            color: Colors.green,
                            child: SizedBox(
                              height: 35,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                  setState(() {});
                },
                quantity: quantity,
                image: "${cartItems[index]['image1']}",
                details: "${cartItems[index]['details']}",
                name: "${cartItems[index]['name']}",
                price: double.parse(cartItems[index]['price']),

                qntplus: () {
                  quantity++;
                  setState(() {});
                },
                qntminus: () {
                  quantity--;
                  setState(() {});
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
