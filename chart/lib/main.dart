import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math' as math;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<LiveData> chartData;
  late List<LiveData> chartData2;
  late ChartSeriesController _chartSeriesController;
  late ChartSeriesController _chartSeriesController2;

  @override
  void initState() {
    chartData = getChartData();
    chartData2 = getChartData2();
    Timer.periodic(const Duration(seconds: 1), updateDataSource);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Real Time Chart"),
        ),
        body: Column(
          children: [
            SfCartesianChart(
             
              series: <LineSeries<LiveData, int>>[
                LineSeries<LiveData, int>(
                    onRendererCreated: (ChartSeriesController controller) {
                      _chartSeriesController = controller;
                    },
                    dataSource: chartData,
                    color: Colors.blue,
                    xValueMapper: (LiveData sales, _) => sales.time,
                    yValueMapper: (LiveData sales, _) => sales.speed),
                // <LineSeries<LiveData2, int>>{
                LineSeries<LiveData, int>(
                    onRendererCreated: (ChartSeriesController controller) {
                      _chartSeriesController2 = controller;
                    },
                    dataSource: chartData2,
                    color: Colors.red,
                    xValueMapper: (LiveData sales, _) => sales.time,
                    yValueMapper: (LiveData sales, _) => sales.speed),
                // },
              ],
              primaryXAxis: NumericAxis(
                  majorGridLines: const MajorGridLines(width: 0),
                  edgeLabelPlacement: EdgeLabelPlacement.shift,
                  interval: 1,
                  title: AxisTitle(text: 'time(seconds)')),
              primaryYAxis: NumericAxis(
                  axisLine: const AxisLine(width: 0),
                  majorTickLines: const MajorTickLines(size: 0),
                  title: AxisTitle(text: 'Suhu & Kelembapan')),
            ),
          ],
        ),
      ),
    );
  }

  int time = 19;
  void updateDataSource(Timer timer) {
    chartData.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
    chartData2.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData2.removeAt(0);
    _chartSeriesController2.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  }

  List<LiveData> getChartData() {
    return <LiveData>[
      LiveData(0, 42),
      LiveData(1, 47),
      LiveData(2, 43),
      LiveData(3, 49),
      LiveData(4, 54),
      LiveData(5, 41),
      LiveData(6, 58),
      LiveData(7, 51),
      LiveData(8, 98),
      LiveData(9, 41),
      LiveData(10, 53),
      LiveData(11, 72),
      LiveData(12, 86),
      LiveData(13, 52),
      LiveData(14, 94),
      LiveData(15, 92),
      LiveData(16, 86),
      LiveData(17, 72),
      LiveData(18, 94),
    ];
  }

  List<LiveData> getChartData2() {
    return <LiveData>[
      LiveData(0, 41),
      LiveData(1, 45),
      LiveData(2, 46),
      LiveData(3, 47),
      LiveData(4, 31),
      LiveData(5, 32),
      LiveData(6, 34),
      LiveData(7, 30),
      LiveData(8, 30),
      LiveData(9, 50),
      LiveData(10, 51),
      LiveData(11, 53),
      LiveData(12, 56),
      LiveData(13, 44),
      LiveData(14, 46),
      LiveData(15, 92),
      LiveData(16, 95),
      LiveData(17, 78),
      LiveData(18, 60),
    ];
  }
}

class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final num speed;
}

class LiveData2 {
  LiveData2(this.time, this.speed);
  final int time;
  final num speed;
}
