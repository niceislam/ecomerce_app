import 'package:flutter/material.dart';
import 'package:new_ecomerce/all_list/shoe_item_list.dart';
import 'package:new_ecomerce/ecomerce_app/cart/shoe_details.dart';
import 'package:new_ecomerce/ecomerce_app/widget/all_widget.dart';

class ProductSeemore extends StatefulWidget {
  const ProductSeemore({super.key});

  @override
  State<ProductSeemore> createState() => _ProductSeemoreState();
}

class _ProductSeemoreState extends State<ProductSeemore> {
  int cardindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        title: Text(
          "Popular products",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomProductType(
                    ontap: () {
                      cardindex = 1;
                      setState(() {});
                    },
                    centerText: "All",
                    cardColor: cardindex == 1 ? Colors.black : Colors.white,
                    textcolor: cardindex == 1 ? Colors.white : Colors.black,
                  ),
                  CustomProductType(
                    ontap: () {
                      cardindex = 2;
                      setState(() {});
                    },
                    centerText: "All",
                    cardColor: cardindex == 2 ? Colors.black : Colors.white,
                    textcolor: cardindex == 2 ? Colors.white : Colors.black,
                  ),
                  CustomProductType(
                    ontap: () {
                      cardindex = 3;
                      setState(() {});
                    },
                    centerText: "All",
                    cardColor: cardindex == 3 ? Colors.black : Colors.white,
                    textcolor: cardindex == 3 ? Colors.white : Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                ),
                itemCount: shoeItems.length,
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
                      image: '${shoeItems[index]['image1']}',
                      name: '${shoeItems[index]['name']}',
                      price: double.parse(shoeItems[index]['price']),
                      status: '${shoeItems[index]['status']}',
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
