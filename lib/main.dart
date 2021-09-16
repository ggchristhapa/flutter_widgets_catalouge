import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/drawer/drawer.dart';
import 'package:riddhasoft_utils/screens/home/index.dart';
import 'package:riddhasoft_utils/utils/navigate.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends HookWidget {
  var bool = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
        home: HomeScreen());
  }
}
