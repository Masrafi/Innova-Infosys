import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:innova_infosys/feature_one/widget/rooms.dart';
import 'package:innova_infosys/feature_three/widget/liner_graph.dart';
import '../../feature_one/widget/bottom_elements.dart';
import '../widget/active_details_3.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 300,
                  child: HomePage()

                  /*LineChart(
                    LineChartData(
                        borderData: FlBorderData(show: false),
                        lineBarsData: [
                          LineChartBarData(spots: [
                            const FlSpot(0, 1),
                            const FlSpot(1, 3),
                            const FlSpot(2, 10),
                            const FlSpot(3, 7),
                            const FlSpot(4, 12),
                            const FlSpot(5, 13),
                            const FlSpot(6, 17),
                            const FlSpot(7, 15),
                            const FlSpot(8, 20)
                          ])
                        ]),
                  )*/
                  ,
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
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Active",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 50,
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 50,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ActiveDetailsTh(
                        title: "Lamp",
                        color: Colors.black,
                        count: "8 Unit | 12 Jam",
                        type: "Kitchen - Bedroom",
                        image: Image.asset(
                          "assets/up.png",
                          height: 15,
                        ),
                        icon: const Icon(
                          FontAwesomeIcons.lightbulb,
                          color: Colors.amber,
                        ),
                      ),
                      ActiveDetailsTh(
                        title: "Television",
                        color: Colors.black,
                        count: "1 Unit | 12 Jam",
                        type: "Living Room",
                        image: Image.asset(
                          "assets/down.png",
                          height: 15,
                        ),
                        icon: const Icon(
                          FontAwesomeIcons.tv,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const BottomElements(),
        ],
      ),
    );
  }
}
