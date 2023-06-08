import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.arrow_back_ios_new,
          size: 15,
          color: Colors.white,
        ),
        const Text(
          "Back",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height / 8,
          ),
          child: Text(
            "Lamp",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 38,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
