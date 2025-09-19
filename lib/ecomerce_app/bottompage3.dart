import 'package:flutter/material.dart';

class Bottompage3 extends StatefulWidget {
  const Bottompage3({super.key});

  @override
  State<Bottompage3> createState() => _Bottompage3State();
}

class _Bottompage3State extends State<Bottompage3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Bottompage 3", style: TextStyle(fontSize: 50))),
      ],
    );
  }
}
