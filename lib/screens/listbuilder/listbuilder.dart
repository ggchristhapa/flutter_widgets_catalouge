import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/listbuilder/listbuilder.dart';

class ListBuilderScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'ListBuilder', centertitle: true),
      body: ListBuilderWidget(
        onTap: (value) {
          print(value);
        },
        items: [
          '1',
          '2',
          '3',
          '1',
          '2',
          '3',
          '1',
          '2',
          '3',
          '1',
          '2',
          '3',
          '1',
          '2',
          '3'
        ],
      ),
    );
  }
}
