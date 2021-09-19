import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore: must_be_immutable
class LayoutBuilderWidget extends HookWidget {
  LayoutBuilderWidget(
      {Key? key, required this.mobile, this.tablet, this.desktop})
      : super(key: key);
  Widget mobile;
  Widget? tablet;
  Widget? desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext ctx, BoxConstraints constraints) {
        if (constraints.maxWidth >= 480 && constraints.maxWidth <= 1027) {
          return tablet ?? mobile;
        } else if (constraints.maxWidth >= 1028) {
          return desktop ?? tablet ?? mobile;
        } else {
          return mobile;
        }
      },
    );
  }
}
