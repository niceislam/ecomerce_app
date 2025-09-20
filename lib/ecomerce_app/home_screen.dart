import 'package:flutter/material.dart';
import 'package:new_ecomerce/all_list/cartList.dart';
import 'package:new_ecomerce/ecomerce_app/bottompage1.dart';
import 'package:new_ecomerce/ecomerce_app/bottompage2.dart';
import 'package:new_ecomerce/ecomerce_app/bottompage3.dart';
import 'package:new_ecomerce/ecomerce_app/cart/cart_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bottompage = [Bottompage1(), Bottompage2(), Bottompage3()];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: currentindex == 0
          ? AppBar(
              backgroundColor: Colors.white,
              title: SizedBox(
                height: 42,
                width: MediaQuery.sizeOf(context).width,
                child: TextField(
                  cursorHeight: 22,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    hintText: "Search product",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    fillColor: Colors.black.withOpacity(0.08),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => CartItem()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black.withOpacity(0.08),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Icon(Icons.shopping_cart_outlined, color: Colors.grey),
                        Positioned(
                          top: -6,
                          right: -5,
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.red,
                            child: Center(
                              child: Text(
                                "${cartItems.length}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.black.withOpacity(0.08),
                  child: Icon(Icons.notifications_outlined, color: Colors.grey),
                ),
                SizedBox(width: 10),
              ],
            )
          : currentindex == 1
          ? AppBar(backgroundColor: Colors.white, title: Text("Bottompage 2"))
          : AppBar(backgroundColor: Colors.white, title: Text("Bottompage 3")),
      body: bottompage[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
        backgroundColor: Colors.white,
        selectedFontSize: 18,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: (value) {
          currentindex = value;
          setState(() {});
        },
        currentIndex: currentindex,
        selectedItemColor: Colors.indigoAccent,
      ),
    );
  }
}
