import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:innova_infosys/feature_four/screen/screenfour.dart';
import 'package:innova_infosys/utils/color.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../feature_one/widget/bottom_elements.dart';
import '../widget/active_details_3.dart';
import '../widget/chart_data.dart';



class ScreenThree extends StatelessWidget {

  var colorFac = new ColorFactory();

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Sun', 100),
      ChartData('Mon', 200),
      ChartData('Tues', 100),
      ChartData('Wed', 80),
      ChartData('Thus', 100),
      ChartData('Fri', 150),
      ChartData(
        'Sat',
        130,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 340,
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 50,
                  left: MediaQuery.of(context).size.height / 40,
                  right: MediaQuery.of(context).size.height / 40,
                ),
                decoration:  BoxDecoration(
                  color: colorFac.theme,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height / 35,
                          ),
                          child: const Text(
                            "Day",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 8,
                        left: MediaQuery.of(context).size.height / 60,
                      ),
                      child: const Text(
                        "Kwh",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Smart Home",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Image.asset("assets/wind.png"),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Usage this week",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: const [
                                Text(
                                  "2500",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "watt",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    //fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            width: double.infinity,
                            height: 200,
                            child: SfCartesianChart(
                                primaryXAxis: CategoryAxis(),
                                series: <ChartSeries>[
                                  SplineSeries<ChartData, String>(
                                    dataSource: chartData,
                                    color: Colors.white,

                                    // Type of spline
                                    splineType: SplineType.cardinal,
                                    cardinalSplineTension: 0.9,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                  )
                                ])),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: colorFac.theme,
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
                                "Total Today",
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
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  ScreenFour(),
                                ),
                              );
                            },
                            child: Text(
                              "See All",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height / 50,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ActiveDetailsTh(
                        title: "Lamp",
                        color1: Colors.teal,
                        count: "8 Unit | 12 Jam",
                        type: "Kitchen - Bedroom",
                        image: Image.asset(
                          "assets/up.png",
                          height: 15,
                          color: Colors.teal,
                        ),
                        icon: const Icon(
                          FontAwesomeIcons.lightbulb,
                          color: Colors.amber,
                        ),
                      ),
                      ActiveDetailsTh(
                        title: "Television",
                        color1: Colors.brown,
                        count: "1 Unit | 12 Jam",
                        type: "Living Room",
                        image: Image.asset(
                          "assets/down.png",
                          height: 15,
                          color: Colors.brown,
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
          BottomElements(),
        ],
      ),
    );
  }
}
