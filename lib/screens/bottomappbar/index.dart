import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/bottomappbar/bottomappbar.dart';

class BottomAppBarScreen extends HookWidget {
  const BottomAppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Bottom App Bar Demo Screen'),
      bottomNavigationBar: bottomAppBarWidget(context, onTap: () {}),
      floatingActionButton: floationActionButtonHome(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
