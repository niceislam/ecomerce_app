import 'package:flutter/material.dart';

class CustomRowtxt extends StatelessWidget {
  const CustomRowtxt({super.key, this.title, this.vmore, this.vewontap});
  final String? title;
  final String? vmore;
  final VoidCallback? vewontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "${title ?? ""}",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        InkWell(
          onTap: vewontap,
          child: Text(
            "${vmore ?? ""}",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}

class CustomshoeCard extends StatelessWidget {
  const CustomshoeCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.status,
  });
  final String image;
  final String name;
  final double price;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 130,
                child: Image(fit: BoxFit.fill, image: NetworkImage("${image}")),
              ),
              Text(
                maxLines: 1,
                "${name}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                maxLines: 2,
                "${status}",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                "\$${price}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAddtoCard extends StatelessWidget {
  const CustomAddtoCard({super.key, this.bkcolor, this.txtcolor, this.ontap});
  final Color? bkcolor;
  final Color? txtcolor;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: bkcolor,
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add to cart",
              style: TextStyle(
                fontSize: 17,
                color: txtcolor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.send, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class CustomCartshowitem extends StatelessWidget {
  const CustomCartshowitem({
    super.key,
    this.name,
    this.details,
    this.price,
    this.image,
    this.deleted,
    this.qntminus,
    this.qntplus,
    this.quantity,
    this.cartColor,
  });
  final String? name;
  final String? details;
  final double? price;
  final String? image;
  final VoidCallback? deleted;
  final VoidCallback? qntminus;
  final VoidCallback? qntplus;
  final int? quantity;
  final Color? cartColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: cartColor,
          ),

          height: 125,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 10,
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("${image}"),
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 1,
                      "${name}",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      maxLines: 1,
                      "${details}",
                      style: TextStyle(
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$${price}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: deleted,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.delete, color: Colors.black, size: 30),
                    ),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      InkWell(
                        onTap: qntminus,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.remove, color: Colors.black),
                        ),
                      ),
                      Text(
                        "${quantity}",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      InkWell(
                        onTap: qntplus,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomProductType extends StatelessWidget {
  const CustomProductType({
    super.key,
    this.centerText,
    this.cardColor,
    this.textcolor,
    this.ontap,
  });
  final String? centerText;
  final Color? cardColor;
  final Color? textcolor;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        color: cardColor,
        child: SizedBox(
          height: 40,
          width: MediaQuery.sizeOf(context).width / 3.7,
          child: Center(
            child: Text(
              "${centerText}",
              style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
