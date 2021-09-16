import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

appBarWidget({title, color, leading, actions, centertitle, elevation, bottom}) {
  return AppBar(
    title: Text(title ?? 'AppBar'),
    centerTitle: centertitle ?? false,
    backgroundColor: color ?? Colors.red,
    actions: actions ?? [Container()],
    bottom: bottom,
    leading: leading,
    elevation: elevation ?? 2,
  );
}
