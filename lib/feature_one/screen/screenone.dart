import 'package:flutter/material.dart';
import 'package:innova_infosys/feature_two/screen/screentwo.dart';

import '../widget/active.dart';
import '../widget/active_elements.dart';
import '../widget/bottom_elements.dart';
import '../widget/cloud.dart';
import '../widget/distance_details.dart';
import '../widget/rooms.dart';
import '../widget/rooms_details.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white,
      body: Stack(
        children: [
          Column   (
            children: [
              Container(
                height: 310,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/cc1.png", height: 80,),
                        Image.asset("assets/cc1.png", height: 45,),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 17, left: MediaQuery.of(context).size.height / 30, right: MediaQuery.of(context).size.height / 30, ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Good Morning", style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 40,
                                color: Colors.white,
                              ),),
                              //SizedBox(height: MediaQuery.of(context).size.height / 60,),
                              Text("Kimberly Masterangelo", style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 55,
                                color: Colors.black,
                              ),),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.notifications,),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 7.5,
                        left: MediaQuery.of(context).size.height / 30,
                        right: MediaQuery.of(context).size.height / 30,
                      ),
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 50,
                        right: MediaQuery.of(context).size.height / 50,
                        top: MediaQuery.of(context).size.height / 80,
                        //bottom: MediaQuery.of(context).size.height / 80,
                      ),
                      height: 180,
                      child: Column(
                        children: [
                          Cloud(),
                          Divider(),
                          Row(
                            children: [
                              DistanceDetails(title: 'Humidity', temp: '97', image: Image.asset("assets/humidity.png"),),
                              SizedBox(width: 5,),
                              DistanceDetails(title: 'Visibility', temp: '80', image: Image.asset("assets/eyes.png"),),

                              SizedBox(width: 5,),
                              DistanceDetails(title: 'NE Wind', temp: '88', image: Image.asset("assets/wind.png"),),

                            ],
                          )
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Container(
                color: Colors.teal,
                child: Container(
                  //height: 500,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 80,
                    left: MediaQuery.of(context).size.height / 30,
                    right: MediaQuery.of(context).size.height / 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Rooms(),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                              child: RoomsDetails(title: '6', temp: '6', details: 'Living Room', device: 'Devices', num: '7', image: Image.asset("assets/chofa.png", width: 100,),)
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: RoomsDetails(title: '12', temp: '12', details: 'Bedroom', device: 'Devices', num: '5', image: Image.asset("assets/khat.png", width: 100,),)

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Active(),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                              child: ActiveElements(title: 'Temprature', value: '6', content: 'AC', contentDetails: 'Living Room', image: Image.asset("assets/ac.png", height: 60), onPressed: () {

                              },)
                          ),
                          SizedBox(width: 10,),

                          Expanded(
                            child: ActiveElements(title: 'Temprature', value: '6', content: 'Lamp', contentDetails: 'Dining Room', image: Image.asset("assets/lamp1.png", height: 60), onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo(),),);
                            },),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          BottomElements(),
        ],
      ),
    );
  }
}
