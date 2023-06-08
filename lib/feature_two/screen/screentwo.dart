import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:innova_infosys/feature_three/screen/screenthree.dart';

import '../widget/active_option.dart';
import '../widget/appbar.dart';
import '../widget/insensity_below.dart';
import '../widget/light.dart';
import '../widget/usages_option.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 390,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height / 60,
                right: MediaQuery.of(context).size.height / 60,
                top: MediaQuery.of(context).size.height / 25,
                bottom: MediaQuery.of(context).size.height / 80,
              ),
              child: Stack(
                children: [
                  const Light(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      "assets/hangl1.png",
                      height: 200,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppBar1(),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Dining Room",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset("assets/off.png"),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "80",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 45,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Brightness",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 50,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Insensity",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 55,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const InsensityBelow(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Usages",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height / 55,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      UsagesOption(
                        title: 'Use Today',
                        amount: '50',
                        pow: 'watt',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      UsagesOption(
                        title: 'Use Week',
                        amount: '500',
                        pow: 'kwh',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      UsagesOption(
                        title: 'Use Month',
                        amount: '5000',
                        pow: 'kmh',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            child: Container(
              height: 400,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 80,
                left: MediaQuery.of(context).size.height / 30,
                right: MediaQuery.of(context).size.height / 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Active",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 40,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenThree(),
                            ),
                          );
                        },
                        child: Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                spreadRadius: 2,
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ActiveOption(),
                  const SizedBox(
                    height: 15,
                  ),
                  const ActiveOption(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
