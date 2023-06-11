import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:innova_infosys/feature_four/screen/screenfour.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../feature_one/widget/bottom_elements.dart';
import '../widget/active_details_3.dart';


class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
class ScreenThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Sun', 100),
      ChartData('Mon', 200),
      ChartData('Tues', 100),
      ChartData('Wed', 80),
      ChartData('Thus', 100),
      ChartData('Fri', 150),
      ChartData('Sat', 130,),
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
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 35,  ),
                          child: Text("Day", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,),),
                        )),
                    Padding(
                      padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 8, left:  MediaQuery.of(context).size.height / 60,),
                      child: Text("Kwh", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,),),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
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
                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Usage this week",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "2500",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 5,),
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
                        SizedBox(
                          height: 30,
                        ),
                        Container(

                          width: double.infinity,
                          height: 200,
                          child:
                          SfCartesianChart(
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
                              ]
                          )


                       /*   DChartLine(
                            data: [
                              {
                                'id': 'Line',
                                'data': [
                                  {'domain': 0, 'measure': 0},
                                  {'domain': 2, 'measure': 2},
                                  {'domain': 3, 'measure': 3},
                                  {'domain': 5, 'measure': 4},
                                  {'domain': 6, 'measure': 8},
                                  {'domain': 7, 'measure': 10},
                                ],
                              },
                            ],
                            lineColor: (lineData, index, id) => Colors.amber,
                          ),*/
                          // LineChart(
                          //   LineChartData(
                          //       borderData: FlBorderData(show: false),
                          //       lineBarsData: [
                          //         LineChartBarData(spots: [
                          //           const FlSpot(0, 1),
                          //           const FlSpot(1, 3),
                          //           const FlSpot(2, 10),
                          //           const FlSpot(3, 7),
                          //           const FlSpot(4, 12),
                          //           const FlSpot(5, 13),
                          //           const FlSpot(6, 17),
                          //           const FlSpot(7, 15),
                          //           const FlSpot(8, 20)
                          //         ])
                          //       ]),
                          // )
                          //,
                        ),
                      ],
                    ),
                  ],
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
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScreenFour(),
                                ),
                              );
                            },
                            child: Text(
                              "See All",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height / 50,
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
          const BottomElements(),
        ],
      ),
    );
  }
}
// Widget chartToRun() {
//   LabelLayoutStrategy? xContainerLabelLayoutStrategy;
//   ChartData chartData;
//   ChartOptions chartOptions = const ChartOptions();
//   // Example shows how to create ChartOptions instance
//   //   which will request to end Y axis at maximum data (as all data negative).
//   // Even though startYAxisAtDataMinRequested is set to true, this will not be granted on bar chart,
//   //   as it does not make sense there.
//   chartOptions = const ChartOptions(
//     dataContainerOptions: DataContainerOptions(
//       startYAxisAtDataMinRequested: true,
//     ),
//   );
//   chartData = ChartData(
//     dataRows: const [
//
//       [10.0, 40.0, 20.0, 25.0, 30.0, 20.0, 10.0],
//       [10.0, 40.0, 20.0, 25.0, 30.0, 20.0, 10.0],
//     ],
//     xUserLabels: const ['Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat', 'Sun'],
//
//     dataRowsLegends: const [
//       '',
//       '',
//     ],
//     chartOptions: chartOptions,
//   );
//   var lineChartContainer = LineChartTopContainer(
//     chartData: chartData,
//     xContainerLabelLayoutStrategy: xContainerLabelLayoutStrategy,
//   );
//
//   var lineChart = LineChart(
//     painter: LineChartPainter(
//       lineChartContainer: lineChartContainer,
//     ),
//   );
//   return lineChart;
// }