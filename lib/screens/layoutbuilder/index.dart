import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/cards/cards.dart';
import 'package:riddhasoft_utils/components/layoutbulder/layoutbuilder.dart';
import 'package:riddhasoft_utils/screens/cards/index.dart';

class LayoutBuilderScreen extends HookWidget {
  LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilderWidget(
        mobile: MobileLayout(),
        tablet: TabLayout(),
        // desktop: DesktopLayout(),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                cardWidget(
                  child: Text('mobile'),
                ),
                cardWidget(
                  child: Text('mobile'),
                ),
                cardWidget(
                  child: Text('mobile'),
                ),
              ],
            )));
  }
}

class TabLayout extends StatelessWidget {
  const TabLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            flex: 6,
            child: cardWidget(
              child: RowCardImage(),
            )),
        Expanded(
            flex: 6,
            child: cardWidget(
              child: RowCardImage(),
            ))
      ],
    )));
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          cardWidget(
            child: RowCardImage(),
          ),
          cardWidget(
            child: RowCardImage(),
          ),
        ],
      ),
    );
  }
}
