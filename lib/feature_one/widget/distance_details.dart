import 'package:flutter/material.dart';

class DistanceDetails extends StatelessWidget {
late Image image;
late String temp;
late String title;
DistanceDetails({required this.image, required this.temp, required this.title});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height / 12,
        decoration:  BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Row(

              children: [
                Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: new BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child:  image,),
                SizedBox(width: 2,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(temp, style: TextStyle(fontSize: MediaQuery.of(context).size.height / 45, fontWeight: FontWeight.w500),),
                    SizedBox(width: 2,),
                    Text("%")
                  ],
                )
              ],
            ),
            SizedBox(height: 2,),
            Text(title, style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 55,
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w500,
            ),),
          ],
        ),
      ),
    );
  }
}
