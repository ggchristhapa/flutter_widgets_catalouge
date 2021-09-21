import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riddhasoft_utils/screens/charts/index.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({
    Key? key,
    required this.data,
    this.chartTitle,
    this.legendPosition,
    this.radius,
    this.showLegend,
  }) : super(key: key);

  final List<SalesDatas> data;
  final String? chartTitle;
  final LegendPosition? legendPosition;
  final double? radius;
  final bool? showLegend;

  @override
  Widget build(BuildContext context) {
    var legentOption = Legend(
        isVisible: showLegend ?? true,
        position: legendPosition ?? LegendPosition.bottom,
        alignment: ChartAlignment.near);
    var barRadius = BorderRadius.only(
      topRight: Radius.circular(radius ?? 15.0),
      topLeft: Radius.circular(radius ?? 15.0),
    );
    var chartSeries = <ChartSeries>[
      ColumnSeries<SalesDatas, int>(
        dataSource: data,
        dataLabelSettings: DataLabelSettings(
          isVisible: true,
        ),
        dataLabelMapper: (SalesDatas sales, _) => sales.x,
        xValueMapper: (SalesDatas sales, _) => sales.y,
        yValueMapper: (SalesDatas sales, _) => sales.y,
        borderRadius: barRadius,
      )
    ];
    return Card(
      child: SfCartesianChart(
          title: ChartTitle(text: chartTitle ?? ''),
          legend: legentOption,
          series: chartSeries),
    );
  }
}
