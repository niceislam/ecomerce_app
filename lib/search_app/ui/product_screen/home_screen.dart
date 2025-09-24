import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:new_ecomerce/search_app/controller/shoe_controller.dart';
import 'package:new_ecomerce/search_app/model/shoeModel.dart';
import '../widget/all_widget.dart';
import '../widget/item_card.dart';

class HomeSearchScreen extends StatefulWidget {
  const HomeSearchScreen({super.key});

  @override
  State<HomeSearchScreen> createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  bool isLoading = false;
  List<MedicineModelData> finalShoeData = [];
  List<MedicineModelData> SearchData = [];
  getData() async {
    isLoading = true;
    SearchData = await ShoeController().shoeModelFun();
    isLoading = false;
    finalShoeData = SearchData;
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  searchFun({required String searchValue}) {
    finalShoeData = SearchData.where(
      (v) => v.name!.toLowerCase().contains(searchValue.toLowerCase()),
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: CustomTextWidget(
          text: "Search App",
          txtcolor: Colors.white,
          fontWeight: FontWeight.bold,
          fontsize: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              onChanged: (v) {
                if (v != "") {
                  searchFun(searchValue: v);
                } else {
                  finalShoeData = SearchData;
                }
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Search here...",
                hintStyle: TextStyle(fontSize: 18),
                filled: true,
                fillColor: Colors.black.withOpacity(0.12),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 10,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: isLoading == true
                  ? Center(
                      child: CircularProgressIndicator(color: Colors.black),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.54,
                      ),
                      itemCount: finalShoeData.length,
                      itemBuilder: (context, index) {
                        MedicineModelData item = finalShoeData[index];
                        return ItemCardWidget(
                          image: item.image,
                          name: item.name,
                          details: item.details,
                          regprice: double.parse("${item.price}"),
                          discountpr: double.parse("${item.regularPrice}"),
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
