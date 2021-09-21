import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/screens/home/index.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends HookWidget {
  var bool = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Riddhasoft Utilis',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
        ),
        home: HomeScreen());
  }
}
