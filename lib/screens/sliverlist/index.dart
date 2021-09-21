import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/slivers/slierappbar.dart';

class SliverListScreen extends HookWidget {
  const SliverListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
          title: 'Sliver Lisit with app bar',
          centertitle: true,
          elevation: 0.0),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBarWidget(
              bgColor: Colors.red,
              expandedheight: 55.0,
              collaspedheight: 250.0,
              pinned: false,
              floating: false,
            ),
            SliverListWidget(),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SliverListWidget extends StatelessWidget {
  SliverListWidget({Key? key, this.items, this.child}) : super(key: key);

  var items;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return child;
        },
        childCount: items != null ? items.length : 15,
      ),
    );
  }
}
