import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SliverAppBarWidget extends StatelessWidget {
  SliverAppBarWidget(
      {Key? key,
      this.bgColor,
      this.title,
      this.floating,
      this.pinned,
      this.expandedheight,
      this.collaspedheight})
      : super(key: key);

  var bgColor;
  var pinned;
  var title;
  var floating;
  var expandedheight;
  var collaspedheight;
  var autoback;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: bgColor ?? Colors.black26,
      title: Text(title ?? ''),
      expandedHeight: expandedheight ?? 30,
      floating: floating ?? true,
      pinned: pinned ?? false,
      flexibleSpace: Container(
        child: Lottie.asset('assets/report.json'),
      ),
      automaticallyImplyLeading: autoback ?? false,
      collapsedHeight: collaspedheight ?? 250,
    );
  }
}
