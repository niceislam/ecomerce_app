import 'package:flutter/material.dart';

class Bottompage2 extends StatefulWidget {
  const Bottompage2({super.key});

  @override
  State<Bottompage2> createState() => _Bottompage2State();
}

class _Bottompage2State extends State<Bottompage2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Bottompage 2", style: TextStyle(fontSize: 50))),
      ],
    );
  }
}
