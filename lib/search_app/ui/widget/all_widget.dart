import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.text,
    this.txtcolor,
    this.fontsize,
    this.fontWeight,
    this.txtoverfolw,
    this.maxline,
    this.linethrow,
  });
  final String? text;
  final Color? txtcolor;
  final double? fontsize;
  final FontWeight? fontWeight;
  final TextOverflow? txtoverfolw;
  final int? maxline;
  final TextDecoration? linethrow;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxline ?? 1,
      text ?? "",
      style: TextStyle(
        decoration: linethrow ?? TextDecoration.none,
        color: txtcolor ?? Colors.black,
        fontSize: fontsize ?? 18,
        fontWeight: fontWeight ?? FontWeight.w300,
        overflow: txtoverfolw ?? TextOverflow.ellipsis,
      ),
    );
  }
}

