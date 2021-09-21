import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BubbleChart extends HookWidget {
  const BubbleChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(DateTime.parse('2016-07-17T03:18:31.177769-04:00'), 25, 0.32),
      ChartData(DateTime.parse('2017-07-17T03:18:31.177769-04:00'), 36, 0.5),
      ChartData(DateTime.parse('2018-07-17T03:18:31.177769-04:00'), 55, 0.18),
      ChartData(DateTime.parse('2019-07-17T03:18:31.177769-04:00'), 32, 0.22),
      ChartData(DateTime.parse('2020-07-17T03:18:31.177769-04:00'), 35, 1),
    ];
    return Card(
      child: SfCartesianChart(
          primaryXAxis: DateTimeAxis(),
          legend: Legend(isVisible: true),
          title: ChartTitle(text: 'Chart Title'),
          series: <ChartSeries>[
            BubbleSeries<ChartData, DateTime>(
                dataSource: chartData,
                dataLabelSettings: DataLabelSettings(isVisible: true),
                sizeValueMapper: (ChartData sales, _) => sales.size,
                xValueMapper: (ChartData sales, _) => sales.x,
                yValueMapper: (ChartData sales, _) => sales.y)
          ]),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.size);
  final DateTime x;
  final double y;
  final double size;
}
