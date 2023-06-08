import 'package:flutter/material.dart';

class Light extends StatelessWidget {
  const Light({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          right: 55,
        ),
        child: Container(
          height: 120,
          width: 110,
          decoration: const BoxDecoration(
              gradient: RadialGradient(colors: [
                Color(0xffD35400),
                Color(0xffD35400),
                Color(0xffD35400),
                Color(0xffDC7633),
                Color(0xffEC7063),
                Color(0xffCA6F1E),
                Colors.teal,
                //Colors.teal,
              ],),),
        ),
      ),
    );
  }
}
