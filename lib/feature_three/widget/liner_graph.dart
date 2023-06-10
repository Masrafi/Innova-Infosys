import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatelessWidget {
  List<SalesData> data = [
    SalesData('Jan', 0),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCartesianChart(
        //primaryXAxis: CategoryAxis(),
        backgroundColor: Colors.teal,
        // title: ChartTitle(text: 'Half Yearly Sales Analysis'),
        // legend: Legend(
        //   isVisible: true,
        // ),
        primaryXAxis: NumericAxis(
            majorGridLines: MajorGridLines(
                width: 1, color: Colors.red, dashArray: <double>[5, 5]),
            minorGridLines: MinorGridLines(
                width: 1, color: Colors.green, dashArray: <double>[5, 5]),
            minorTicksPerInterval: 2),
        //tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            dataSource: data,
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.sales,
            //name: 'Sales',
            color: Colors.white,

            dataLabelSettings: DataLabelSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}

//https://help.syncfusion.com/flutter/cartesian-charts/axis-customization#grid-lines-customization
