import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/drawer/drawer.dart';
import 'package:riddhasoft_utils/utils/navigate.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget(
            title: 'Riddhasoft Utils', centertitle: true, elevation: 0.0),
        drawer: drawerAppWidget(context),
        body: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              var flexibleSpaceBar = FlexibleSpaceBar(
                  background: Lottie.asset('assets/utilis.json'));
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 250,
                  leading: Container(),
                  floating: true,
                  elevation: 5,
                  toolbarHeight: 0,
                  backgroundColor: Colors.red,
                  flexibleSpace: flexibleSpaceBar,
                )
              ];
            },
            body: ListView.builder(
                itemCount: utilsItems.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: Icon(utilsItems[index].icon),
                    title: Text(utilsItems[index].title),
                    onTap: () {
                      navigateTo(
                          screen: utilsItems[index].screen, context: context);
                    },
                  );
                })));
  }
}
