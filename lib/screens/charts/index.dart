import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/charts/barchart.dart';
import 'package:riddhasoft_utils/components/charts/bubblechart.dart';
import 'package:riddhasoft_utils/components/charts/gaugechart.dart';
import 'package:riddhasoft_utils/components/charts/linechart.dart';
import 'package:riddhasoft_utils/components/charts/radialchart.dart';
import 'package:riddhasoft_utils/components/layoutbulder/layoutbuilder.dart';

List<SalesDatas> data = [
  SalesDatas('Jan', 35),
  SalesDatas('Feb', 28),
  SalesDatas('Mar', 18),
  SalesDatas('Mar', 67),
  SalesDatas('Mar', 12),
  SalesDatas('Mar', 75),
  SalesDatas('Mar', 55),
  SalesDatas('Apr', 62),
  SalesDatas('May', 40)
];

var mapData = [
  'New South Wales',
  '       New\nSouth Wales',
  'Queensland',
  'Queensland',
  'Northern Territory',
  'Northern\nTerritory',
  'Victoria',
  'Victoria',
  'South Australia',
  'South Australia',
  'Western Australia',
  'Western Australia',
  'Tasmania',
  'Tasmania',
  'Australian Capital Territory',
  'ACT'
];

class ChartScreen extends HookWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('one', 88, 0.32),
      ChartData('two', 36, 0.32),
      ChartData('three', 75, 0.32),
      ChartData('four', 32, 0.32),
    ];
    return Scaffold(
        appBar: appBarWidget(title: 'Charts', centertitle: true),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: SafeArea(
            child: LayoutBuilderWidget(
              mobile: MobileLayout(chartData: chartData),
              tablet: TabletLayout(chartData: chartData),
              desktop: DesktopLayout(chartData: chartData),
            ),
          ),
        ));
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final List<ChartData> chartData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: LineChartWidget(),
            ),
            Expanded(
              child: BubbleChart(),
            ),
            Expanded(
              child: RadialChartWidget(chartData: chartData),
            ),
            Expanded(
              child: PieChartWidget(chartData: chartData),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: BarChartWidget(
              data: data,
              chartTitle: 'BarChart',
            )),
            Expanded(
              child: GaugeChartWidget(),
            ),
          ],
        )
      ],
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final List<ChartData> chartData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              LineChartWidget(),
              BubbleChart(),
              GaugeChartWidget(),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              RadialChartWidget(chartData: chartData),
              PieChartWidget(chartData: chartData),
              BarChartWidget(
                data: data,
                chartTitle: 'BarChart',
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final List<ChartData> chartData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LineChartWidget(),
        BubbleChart(),
        RadialChartWidget(chartData: chartData),
        PieChartWidget(chartData: chartData),
        BarChartWidget(
          data: data,
          chartTitle: 'Bar Chart',
        ),
        GaugeChartWidget()
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.size);
  final String x;
  final double y;
  final double size;
}

class SalesDatas {
  SalesDatas(this.x, this.y);

  final String x;
  final int y;
}
