import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/screens/charts/index.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadialChartWidget extends HookWidget {
  const RadialChartWidget({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final List<ChartData> chartData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SfCircularChart(
          legend: Legend(isVisible: true),
          title: ChartTitle(text: 'Chart Title'),
          series: <CircularSeries>[
            RadialBarSeries<ChartData, String>(
                dataSource: chartData,
                strokeColor: Colors.red,
                cornerStyle: CornerStyle.bothCurve,
                radius: '100%',
                gap: '3%',
                enableTooltip: true,
                sortingOrder: SortingOrder.descending,
                legendIconType: LegendIconType.circle,
                enableSmartLabels: true,
                dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    labelPosition: ChartDataLabelPosition.outside),
                innerRadius: '25',
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y)
          ]),
    );
  }
}

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final List<ChartData> chartData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SfCircularChart(
          legend: Legend(isVisible: true),
          title: ChartTitle(text: 'Chart Title'),
          series: <CircularSeries>[
            PieSeries<ChartData, String>(
                dataSource: chartData,
                dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    labelPosition: ChartDataLabelPosition.outside),
                enableSmartLabels: true,
                dataLabelMapper: (ChartData data, _) => data.y.toString(),
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                explode: true,
                explodeAll: true)
          ]),
    );
  }
}
