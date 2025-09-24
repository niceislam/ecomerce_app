import 'package:flutter/material.dart';
import 'all_widget.dart';
import 'package:lottie/lottie.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({
    super.key,
    this.image,
    this.name,
    this.details,
    this.regprice,
    this.discountpr,
  });
  final String? image;
  final String? name;
  final String? details;
  final double? regprice;
  final double? discountpr;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width / 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 3,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: FadeInImage(
                  placeholder: NetworkImage(
                    "https://i.pinimg.com/originals/8a/c1/29/8ac12962c05648c55ca85771f4a69b2d.gif",
                  ),
                  fit: BoxFit.fill,
                  height: 160,
                  width: 160,
                  image: NetworkImage("${image}"),
                  imageErrorBuilder: (context, i, j) {
                    return Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/a/a3/Image-not-found.png?20210521171500",
                    );
                  },
                ),
                // child: Container(
                //   height: 120,
                //   width: 150,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     image: DecorationImage(
                //       fit: BoxFit.fill,
                //       image: NetworkImage("${image ?? ""}"),
                //     ),
                //   ),
                // ),
              ),
              CustomTextWidget(
                maxline: 2,
                text: "${name ?? ""}",
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(fontsize: 16, text: "Details: ${details ?? ""}"),
              Row(
                children: [
                  CustomTextWidget(text: "Regular Price: ", fontsize: 16),
                  CustomTextWidget(
                    maxline: 1,
                    linethrow: TextDecoration.lineThrough,
                    txtoverfolw: TextOverflow.ellipsis,
                    text: "${regprice ?? ""} ৳",
                    fontsize: 16,
                  ),
                ],
              ),
              CustomTextWidget(
                fontsize: 16,
                text: "Price: ${discountpr ?? ""} ৳",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
