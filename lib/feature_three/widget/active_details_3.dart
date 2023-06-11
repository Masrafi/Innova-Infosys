import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActiveDetailsTh extends StatelessWidget {
  late String title;
  late String type;
  late String count;
  late Image image;
  late Color color1;
  late Icon icon;

  ActiveDetailsTh(
      {required this.icon,
      required this.title,
      required this.color1,
      required this.count,
      required this.image,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(
        top: 15,
        right: 12,
        left: 12,
        bottom: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFe0f2f1),
                ),
                child: icon,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  count,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Align(
                    alignment: Alignment.topRight, child: Text("1000 kw/h")),
                Row(
                  children: [
                    const Spacer(),
                    image,
                     Text("-11.2%", style: TextStyle(color: color1,),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
