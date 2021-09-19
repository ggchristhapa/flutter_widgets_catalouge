import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/cards/cards.dart';

class CardsScreen extends HookWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Cards Screen', centertitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            cardWidget(child: ColumnCardImage()),
            SizedBox(
              height: 10,
            ),
            cardWidget(child: RowCardImage()),
            SizedBox(
              height: 10,
            ),
            cardWidget(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card With Image',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Official HD music video for ”Aerials” by System of a Down Listen to System of a Down',
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class RowCardImage extends StatelessWidget {
  const RowCardImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Lottie.asset('assets/signup.json')),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Card With Image',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Official HD music video for ”Aerials” by System of a Down Listen to System of a Down',
            )
          ],
        ))
      ],
    );
  }
}

class ColumnCardImage extends StatelessWidget {
  const ColumnCardImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset('assets/login.json', height: 250),
        Text(
          'Card With Image',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Official HD music video for ”Aerials” by System of a Down Listen to System of a Down: https://SystemOfADown.lnk.to/listenYD Subscribe to the official System of a Down YouTube channel: ',
        )
      ],
    );
  }
}
