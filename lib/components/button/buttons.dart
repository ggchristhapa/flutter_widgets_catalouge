// ignore: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore: must_be_immutable
class ButtonWidget extends HookWidget {
  var pressed;
  var btnIcon;
  var title;
  var color;
  var radius;
  var textColor;
  var iconColor;
  var loading;

  ButtonWidget(
      {this.pressed,
      this.btnIcon,
      this.title,
      this.color,
      this.radius,
      this.textColor,
      this.iconColor,
      this.loading});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.width < 600 ? 40 : 45,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: pressed,
        icon: Icon(
          btnIcon,
          color: iconColor,
          size: MediaQuery.of(context).size.width < 600 ? 25 : 25,
        ),
        label: Flexible(
            child: Text(
          '$title',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
          ),
        )),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(color ?? Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ))),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({Key? key, required this.title, this.pressed})
      : super(key: key);

  var title;
  var pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text('Text Button')));
  }
}

class IconButtonWIdget extends StatelessWidget {
  IconButtonWIdget({Key? key, this.pressed, this.icon}) : super(key: key);

  var pressed;
  var icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          pressed();
        },
        icon: Icon(icon));
  }
}

class FloatingButtonWidget extends StatelessWidget {
  FloatingButtonWidget(
      {Key? key, this.bgColor, this.icon, this.pressed, this.elevation})
      : super(key: key);

  var pressed;
  var icon;
  var elevation;
  var bgColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: bgColor ?? Colors.red,
      elevation: elevation ?? 5,
      onPressed: () {},
      child: Icon(icon ?? Icons.music_note),
    );
  }
}

class FloatingButtonWithTextWidget extends StatelessWidget {
  FloatingButtonWithTextWidget(
      {Key? key, this.bgColor, this.icon, this.pressed, this.elevation})
      : super(key: key);

  var pressed;
  var icon;
  var elevation;
  var bgColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: bgColor ?? Colors.red,
      elevation: elevation ?? 5,
      onPressed: () {},
      child: Row(
        children: [Icon(icon ?? Icons.music_note), Text('data')],
      ),
    );
  }
}
