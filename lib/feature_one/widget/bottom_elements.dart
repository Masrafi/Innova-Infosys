import 'package:flutter/material.dart';

class BottomElements extends StatelessWidget {
  const BottomElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              SizedBox(width: 15,),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/home.png", color: Colors.teal,),
                      SizedBox(width: 10,),
                      Text("Home", style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 55,
                          color: Colors.teal,
                          fontWeight: FontWeight.w500
                      ),),

                    ],
                  ),
                ),),

              SizedBox(width: 7,),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child:  Center(child: Image.asset("assets/net fill.png", color: Colors.teal,)),
                ),),
              SizedBox(width: 7,),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child:  Center(child: Image.asset("assets/pie.png", color: Colors.teal,)),
                ),),
              SizedBox(width: 7,),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child:  Center(child: Image.asset("assets/user fill.png", color: Colors.teal,)),
                ),),
              SizedBox(width: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
