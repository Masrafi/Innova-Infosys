import 'package:flutter/material.dart';

class Active extends StatelessWidget {
  const Active({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text("Active", style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 40,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(width: 5,),
            Container(
              width: 30.0,
              height: 30.0,
              decoration: new BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Center(child: const Text("6", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),),
          ],
        ),
        Text("See All", style: TextStyle(
          fontSize: MediaQuery.of(context).size.height / 40,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),),
      ],
    );
  }
}
