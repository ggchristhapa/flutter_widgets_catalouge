// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:riddhasoft_utils/components/cards/cards.dart';

// ignore: must_be_immutable
class ExpansiontileWidget extends HookWidget {
  ExpansiontileWidget(
      {Key? key,
      this.title,
      this.child,
      this.subtitle,
      this.image,
      this.color,
      this.iconColor})
      : super(key: key);
  var title;
  var child;
  var color;
  var subtitle;
  var image;
  var iconColor;

  @override
  Widget build(BuildContext context) {
    return cardWidget(
        child: ExpansionTile(
      backgroundColor: color,
      title: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: image,
            ),
            SizedBox(
              width: 15,
            ),
            Text(title ?? '')
          ],
        ),
      ),
      subtitle: Text(subtitle ?? ''),
      iconColor: iconColor ?? Colors.red,
      trailing: Icon(
        Icons.arrow_drop_down,
      ),
      children: child ?? [],
      onExpansionChanged: (bool expanded) {},
    ));
  }
}
