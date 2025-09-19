import 'package:new_ecomerce/all_list/shoe_item_list.dart';

class Item {
  final String image1;
  final String image2;
  final String image3;
  final String productittle;
  final String status;
  final double price;
  final String details;

  Item({
    required this.image1,
    required this.image2,
    required this.image3,
    required this.price,
    required this.productittle,
    required this.status,
    required this.details,
  });
}
List<Item> CartList = [
  Item(
    image1:
        "https://t3.ftcdn.net/jpg/02/77/57/08/360_F_277570866_4paYMmM6jGZC70J4wJhRNlML3JzRWJKQ.jpg",
    image2:
        "https://st2.depositphotos.com/4307429/7393/i/950/depositphotos_73934615-stock-photo-sneaker-on-white-background.jpg",
    image3:
        "https://st2.depositphotos.com/4307429/7393/i/450/depositphotos_73934475-stock-photo-sneaker-on-white-background.jpg",
    price: 250,
    productittle: "Pair of pink sport shoes",
    status: "Trending now",
    details:
        "Upper Material: Synthetic Feature: Hard-Wearing, Massage, Breathable, Anti-Odor, Sweat-Absorbant Closure Type: Lace-Up Outsole",
  ),
];
