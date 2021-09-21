import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeChartWidget extends StatelessWidget {
  const GaugeChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultRange = <GaugeRange>[
      GaugeRange(
          startValue: 0,
          endValue: 50,
          color: Colors.green,
          startWidth: 10,
          endWidth: 10),
      GaugeRange(
          startValue: 50,
          endValue: 100,
          color: Colors.orange,
          startWidth: 10,
          endWidth: 10),
      GaugeRange(
          startValue: 100,
          endValue: 150,
          color: Colors.red,
          startWidth: 10,
          endWidth: 10),
    ];
    var gaugePointer = <GaugePointer>[NeedlePointer(value: 90)];
    var valueAnnotation = <GaugeAnnotation>[
      GaugeAnnotation(
          widget: Container(
              child: Text('90.0',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          angle: 90,
          positionFactor: 0.5)
    ];
    return Card(
      child: SfRadialGauge(
          title: GaugeTitle(text: 'Radial Gauge Chart'),
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 150,
              ranges: defaultRange,
              pointers: gaugePointer,
              annotations: valueAnnotation,
            )
          ]),
    );
  }
}
