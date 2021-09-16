import 'package:flutter/material.dart';

Card cardWidget({child}) {
  return Card(
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Container(
      padding: EdgeInsets.all(10),
      child: child,
    ),
  );
}
