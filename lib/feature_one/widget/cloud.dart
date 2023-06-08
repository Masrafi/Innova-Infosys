import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  const Cloud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            "assets/cc2.png",
            height: 70,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "May 16, 2021 10.05 AM",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 55,
                  color: Colors.black,
                ),
              ),
              Text(
                "Cloudy",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Jakarta, Indonesia",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 55,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Image.asset(
            "assets/cc2.png",
            height: 70,
          ),
        ),
      ],
    );
  }
}
