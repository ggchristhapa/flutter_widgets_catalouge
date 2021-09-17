import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class GridBuilderWidget extends StatelessWidget {
  GridBuilderWidget(
      {Key? key,
      this.crossaxiscount,
      this.crossaxisspacing,
      this.children,
      this.mainaxisspacing})
      : super(key: key);

  var crossaxiscount;
  var crossaxisspacing;
  var mainaxisspacing;
  var children;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
      crossAxisCount: crossaxiscount ?? 3,
      crossAxisSpacing: crossaxisspacing ?? 5,
      mainAxisSpacing: mainaxisspacing ?? 5,
      children: children ?? [],
    );
  }
}
