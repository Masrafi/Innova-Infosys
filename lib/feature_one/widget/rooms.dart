import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Rooms", style: TextStyle(
          fontSize: MediaQuery.of(context).size.height / 40,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),),
        Text("See All", style: TextStyle(
          fontSize: MediaQuery.of(context).size.height / 40,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),),
      ],
    );
  }
}
