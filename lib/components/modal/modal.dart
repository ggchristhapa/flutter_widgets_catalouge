import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/button/buttons.dart';

class ModalWidgets extends HookWidget {
  ModalWidgets({Key? key, this.header, this.headerIcon}) : super(key: key);
  var header;
  var headerIcon;
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      title: 'Modal Alert Dialog',
      radius: 15.0,
      btnIcon: Icons.warning,
      pressed: () {
        showDialog(
            useSafeArea: true,
            barrierColor: Colors.black.withOpacity(0.8),
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                scrollable: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                title: Column(
                  children: [Text(header ?? 'Modal Header'), Divider()],
                ),
                content: Container(child: Text('data')),
              );
            });
      },
      color: Colors.red,
    );
  }
}

myModal(context, {child, title, icon}) {
  var roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  ));
  return showModalBottomSheet<void>(
      context: context,
      isDismissible: false,
      enableDrag: true,
      shape: roundedRectangleBorder,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: modalHeader(icon, title),
              ),
              Divider(
                thickness: 2,
              ),
              child,
            ],
          ),
        );
      });
}

Row modalHeader(icon, title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Icon(icon),
      SizedBox(width: 5),
      Text(
        title ?? '',
        style: TextStyle(fontSize: 18),
      ),
    ],
  );
}
