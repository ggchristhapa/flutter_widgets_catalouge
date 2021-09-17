import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/expansiontile/index.dart';
import 'package:riddhasoft_utils/components/listbuilder/listbuilder.dart';

class ExpansionTileScreen extends HookWidget {
  const ExpansionTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Expansion Tiles'),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ExpansiontileWidget(
                  title: "List of Names",
                  color: Colors.transparent,
                  image: Lottie.asset('assets/report.json'),
                  child: <Widget>[
                    ListTile(title: Text('This is tile number 2')),
                    ListTile(title: Text('This is tile number 2')),
                    ListTile(title: Text('This is tile number 2')),
                  ],
                  subtitle: 'Custom expansion arrow icon'),
              ExpansiontileWidget(
                  title: "List of surnames",
                  image: Lottie.asset('assets/camera.json'),
                  child: <Widget>[
                    Container(
                      child: ListBuilderWidget(
                        items: [
                          '1',
                          '2',
                          '3',
                          '1',
                          '2',
                          '3',
                          '1',
                          '2',
                          '3',
                          '1',
                          '2',
                          '3'
                        ],
                      ),
                    )
                  ],
                  subtitle: 'Custom expansion arrow icon'),
            ],
          )),
    );
  }
}
