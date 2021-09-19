import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/button/buttons.dart';
import 'package:riddhasoft_utils/components/input/input.dart';

class SignupScreen extends HookWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Signup Screen', centertitle: true),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/signup.json',
                  height: MediaQuery.of(context).size.width * 0.4),
              InputWidget(
                label: 'Name',
              ),
              InputWidget(
                label: 'Contact Number',
              ),
              InputWidget(
                label: 'Email',
              ),
              InputWidget(
                label: 'Password',
              ),
              ButtonWidget(
                title: 'Signup',
                btnIcon: Icons.login,
                pressed: () {},
                radius: 15.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
