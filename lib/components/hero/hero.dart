import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget(
      {required this.photo,
      required this.onTap,
      required this.width,
      required this.gif});

  final String photo;
  final VoidCallback onTap;
  final double width;
  final bool gif;

  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: HeroMode(
          child: Hero(
            tag: photo,
            child: Material(
              child: InkWell(
                  onTap: onTap,
                  child: gif == true
                      ? Lottie.asset(photo)
                      : Image.asset(
                          photo,
                          fit: BoxFit.cover,
                        )),
            ),
          ),
          enabled: true,
        ));
  }
}
