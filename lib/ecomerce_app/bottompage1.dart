import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_ecomerce/ecomerce_app/cart/shoe_details.dart';
import 'package:new_ecomerce/ecomerce_app/widget/all_widget.dart';

import '../all_list/carousel _list.dart';
import '../all_list/shoe_item_list.dart';

class Bottompage1 extends StatefulWidget {
  const Bottompage1({super.key});

  @override
  State<Bottompage1> createState() => _Bottompage1State();
}

class _Bottompage1State extends State<Bottompage1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: MediaQuery.sizeOf(context).width / 1.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("${carouselItem[3]}"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 13,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildColumn(
                  icon: Icon(Icons.bolt, size: 30, color: Colors.red.shade300),
                  title: 'Flash deal',
                ),
                _buildColumn(
                  icon: Icon(
                    Icons.event_note,
                    size: 30,
                    color: Colors.red.shade300,
                  ),
                  title: 'Bill',
                ),
                _buildColumn(
                  icon: Icon(
                    Icons.sports_esports_outlined,
                    size: 30,
                    color: Colors.red.shade300,
                  ),
                  title: 'Game',
                ),
                _buildColumn(
                  icon: Icon(
                    Icons.confirmation_num_outlined,
                    size: 30,
                    color: Colors.red.shade300,
                  ),
                  title: 'Daily Voucher',
                ),
                _buildColumn(
                  icon: Icon(Icons.apps, size: 30, color: Colors.red.shade300),
                  title: 'More',
                ),
              ],
            ),
            SizedBox(height: 15),
            CustomRowtxt(
              title: "Specially for you",
              vmore: "See more",
              vewontap: () {},
            ),
            SizedBox(height: 15),
            CarouselSlider(
              items: carouselItem.map((i) {
                return Container(
                  width: MediaQuery.sizeOf(context).width / 1.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("$i"),
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                enlargeFactor: 0.3,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                height: 120,
                initialPage: 0,
              ),
            ),
            SizedBox(height: 15),
            CustomRowtxt(title: "Popular product", vmore: "view more"),
            SizedBox(height: 15),
            Container(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                itemCount: shoeItems.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => ShoeDetails(
                            image1: "${shoeItems[index]['image1']}",
                            image2: "${shoeItems[index]['image2']}",
                            image3: "${shoeItems[index]['image3']}",
                            details: "${shoeItems[index]['details']}",
                            name: "${shoeItems[index]['name']}",
                            price: double.parse(shoeItems[index]['price']),
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: CustomshoeCard(
                      image: "${shoeItems[index]['image1']}",
                      name: "${shoeItems[index]['name']}",
                      price: double.parse(shoeItems[index]['price']),
                      status: "${shoeItems[index]['status']}",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Column _buildColumn({
  required Icon icon,
  required String title,
  VoidCallback? ontap,
}) {
  return Column(
    children: [
      InkWell(
        onTap: ontap,
        child: Container(
          height: 55,
          width: 55,
          child: icon,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red.withOpacity(0.12),
          ),
        ),
      ),
      SizedBox(
        width: 60,
        child: Text(
          textAlign: TextAlign.center,
          "${title}",
          style: TextStyle(fontSize: 15),
          maxLines: 2,
        ),
      ),
    ],
  );
}
