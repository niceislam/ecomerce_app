import 'dart:developer';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:new_ecomerce/ecomerce_app/cart/shoe_details.dart';
import 'package:new_ecomerce/ecomerce_app/product_seeMore.dart';
import 'package:new_ecomerce/ecomerce_app/widget/all_widget.dart';
import 'package:new_ecomerce/model/converter.dart';
import 'package:new_ecomerce/model/shoe_model.dart';

import '../all_list/carousel _list.dart';
import '../all_list/class.dart';
import '../model/shoe_database.dart';
class ShoeClass {
  List<ShoeItemData> modelPassData = [];
}

class Bottompage1 extends StatefulWidget {
  const Bottompage1({super.key});

  @override
  State<Bottompage1> createState() => _Bottompage1State();
}

class _Bottompage1State extends State<Bottompage1> {

  fetchData() async {
    await ShoeItemDConverter().itemToModelconverter();
    var a = await ShoeItemDConverter().itemToModelconverter();
    ShoeClass().modelPassData = a;
    log("==========bbbbb$a");

    setState(() {
    });
    log("=========aaaaa========${ShoeClass().modelPassData.length}");
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

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
            CustomRowtxt(
              vewontap: () async {
                EasyLoading.show();
                await Future.delayed(Duration(seconds: 1));
                EasyLoading.dismiss();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (c) => ProductSeemore()),
                // );
              },
              title: "Popular product",
              vmore: "See more",
            ),
            SizedBox(height: 15),
            Container(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                itemCount: ShoeClass().modelPassData.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => ShoeDetails(
                            image1:
                                "${ShoeClass().modelPassData[index].image1}",
                            image2:
                                "${ShoeClass().modelPassData[index].image2}",
                            image3:
                                "${ShoeClass().modelPassData[index].image3}",
                            details:
                                "${ShoeClass().modelPassData[index].details}",
                            name: "${ShoeClass().modelPassData[index].name}",
                            price: ShoeClass().modelPassData[index].price,
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: CustomshoeCard(
                      image: "${ShoeClass().modelPassData[index].image1}",
                      name: "${ShoeClass().modelPassData[index].name}",
                      price: ShoeClass().modelPassData[index].price,
                      status: "${ShoeClass().modelPassData[index].status}",
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
