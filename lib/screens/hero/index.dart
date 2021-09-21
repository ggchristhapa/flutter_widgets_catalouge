import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/gridbuilder/gridbuilder.dart';
import 'package:riddhasoft_utils/components/hero/hero.dart';
import 'package:riddhasoft_utils/utils/navigate.dart';

class HeroScreen extends HookWidget {
  const HeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget(title: 'Hero Widget Screen', centertitle: true),
        body: Container(
            padding: const EdgeInsets.all(15.0),
            child: GridBuilderWidget(
              crossaxiscount: 4,
              crossaxisspacing: 10.0,
              mainaxisspacing: 5.0,
              children: [
                HeroWidget(
                    gif: false,
                    photo: 'assets/photo.jpg',
                    onTap: () {
                      navigateTo(screen: HeroCardScreen(), context: context);
                    },
                    width: double.infinity),
                HeroWidget(
                    gif: true,
                    photo: 'assets/loader1.json',
                    onTap: () {
                      navigateTo(screen: HeroCardScreen(), context: context);
                    },
                    width: double.infinity),
              ],
            )));
  }
}

class HeroCardScreen extends StatelessWidget {
  const HeroCardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: HeroWidget(
                    gif: false,
                    photo: 'assets/photo.jpg',
                    width: double.infinity,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hero Title',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Help Magister Siwan at the Sinking ship prologue.\n"
                        "Give Migo's ring to Magister Yarrow in Fort Joy after giving Migo a Yarrow Flower.\n"
                        "Rescue Saheila from the Lone Wolves at the Abandoned Livewood Sawmill.\n"
                        "Save Elodi, during the shakedown quest.\n"
                        "Refuse to give up the thief's name during the quest The Imprisoned Elf.\n"
                        "Help Higba, the prime suspect of the magisters escape from Driftwood (go through river, next to Meistr house).\n"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
