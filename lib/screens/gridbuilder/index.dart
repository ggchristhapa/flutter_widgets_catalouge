import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/cards/cards.dart';
import 'package:riddhasoft_utils/components/gridbuilder/gridbuilder.dart';

class GridBuilderScreen extends HookWidget {
  const GridBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Grid Builder', centertitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridBuilderWidget(
              crossaxiscount: MediaQuery.of(context).size.width > 650 ? 5 : 3,
              children: List.generate(25, (index) {
                return cardWidget(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.transparent,
                          child: Lottie.asset(
                              MediaQuery.of(context).size.width > 650
                                  ? 'assets/loader1.json'
                                  : 'assets/loader2.json'),
                        ),
                        Text(
                          'Item $index',
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            GridBuilderWidget(
              crossaxiscount: MediaQuery.of(context).size.width > 650 ? 5 : 3,
              children: List.generate(25, (index) {
                return cardWidget(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.transparent,
                          child: Lottie.asset(
                              MediaQuery.of(context).size.width > 650
                                  ? 'assets/loader3.json'
                                  : 'assets/dotsloading.json'),
                        ),
                        Text(
                          'Item $index',
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            GridBuilderWidget(
              crossaxiscount: MediaQuery.of(context).size.width > 650 ? 5 : 3,
              children: List.generate(25, (index) {
                return cardWidget(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.transparent,
                          child: Lottie.asset(
                              MediaQuery.of(context).size.width > 650
                                  ? 'assets/camera.json'
                                  : 'assets/utilis.json'),
                        ),
                        Text(
                          'Item $index',
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
