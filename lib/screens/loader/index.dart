import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';

class LoaderScreen extends HookWidget {
  const LoaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Loaders', centertitle: true),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/dotsloading.json', height: 150),
              Lottie.asset('assets/loader1.json', height: 150),
              Lottie.asset('assets/loader2.json', height: 150),
              Lottie.asset('assets/loader3.json', height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
