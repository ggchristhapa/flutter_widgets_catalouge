import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/cards/cards.dart';
import 'package:riddhasoft_utils/components/imagepicker/imagepicker.dart';

class ImagePickerScreen extends HookWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Image Picker Utils', centertitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Lottie.asset('assets/report.json', height: 250),
            cardWidget(child: MyCamera(getImage: (image) {})),
          ],
        ),
      ),
    );
  }
}
