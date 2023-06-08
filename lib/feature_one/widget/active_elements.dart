import 'package:flutter/material.dart';

class ActiveElements extends StatelessWidget {
  late final String title;
  late final String value;
  late final String content;
  late final String contentDetails;
  late Image image;
  final VoidCallback onPressed;
  ActiveElements({required this.title, required this.value, required this.content, required this.contentDetails, required this.image, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal[100],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        height: 150,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10, right: 10,),

        child: Stack(
          children: [
            image,
            Align(
              alignment: Alignment.topRight,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 30,),
                  Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white,),),

                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Container(
                      width: 25.0,
                      height: 23.0,
                      //padding: EdgeInsets.all(3),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //SizedBox(width: 30,),
                          Row(
                            //mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            //textBaseline: TextBaseline.alphabetic,
                            children: [
                               Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                              const Text("0", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Text("C", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                        ],
                      ),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 90,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(content, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white,),),
                      Text(contentDetails, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white,),),

                    ],
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset("assets/off.png", ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
