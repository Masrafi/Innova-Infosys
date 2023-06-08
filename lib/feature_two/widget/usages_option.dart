import 'package:flutter/material.dart';

class UsagesOption extends StatelessWidget {
  late String title;
  late String amount;
  late String pow;
  UsagesOption({required this.title, required this.amount, required this.pow});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.height / 60,
          ),
        ),
        Row(
          children: [
            Text(
              amount,
              style: TextStyle(
                color: Colors.white,
                fontSize:
                MediaQuery.of(context).size.height / 55,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              pow,
              style: TextStyle(
                color: Colors.white,
                fontSize:
                MediaQuery.of(context).size.height / 60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
