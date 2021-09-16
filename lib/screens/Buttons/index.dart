import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/button/buttons.dart';

class ButtonScreen extends HookWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Buttons', centertitle: true),
      floatingActionButton: Row(
        children: [
          Expanded(
            child: FloatingButtonWidget(),
          ),
          Expanded(
            child: FloatingButtonWidget(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ButtonWidget(
                title: 'Elevated Button with Icon',
                btnIcon: Icons.headphones_sharp,
                radius: 15.0,
                pressed: () {}),
            ButtonWidget(
                title: 'Elevated Button', radius: 15.0, pressed: () {}),
            TextButtonWidget(
              title: 'Text Button',
            ),
            IconButtonWIdget(
              icon: Icons.add,
              pressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
