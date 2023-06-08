import 'package:flutter/material.dart';

class RoomsDetails extends StatelessWidget {
late final String title;
late final String temp;
late final String details;
late final String device;
late final String num;
late Image image;
RoomsDetails({required this.title, required this.temp, required this.details, required this.device, required this.num, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[100],
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      height: 170,
      width: double.infinity,
      padding: const EdgeInsets.all(12),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50.0,
            height: 25.0,
            padding: EdgeInsets.only(top: 3),
            decoration: new BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //textBaseline: TextBaseline.alphabetic,
                  children: [
                     Text(temp, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    const Text("0", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w500),),
                  ],
                ),
                Text("C", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
              ],
            ),),
          SizedBox(height: 10,),
          Center(
            child: image,
          ),
          SizedBox(height: 5,),
          Center(
            child: Text(details, style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 50,
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w500,
            ),),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 20.0,
                height: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),

                child:  Center(child: Text(num)),),
              SizedBox(width: 5,),
              Text(device, style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 60,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}
