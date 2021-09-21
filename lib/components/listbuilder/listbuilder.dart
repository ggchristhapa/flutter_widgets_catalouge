import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore: must_be_immutable
class ListBuilderWidget extends HookWidget {
  ListBuilderWidget(
      {Key? key, this.items, this.onTap, this.leading, this.trailing})
      : super(key: key);
  var items;
  var onTap;
  var leading;
  var trailing;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length ?? 0,
      itemBuilder: (context, index) {
        var item = items[index];
        return ListTile(
          onTap: () {
            onTap(item);
          },
          title: Text('title ' + item),
          subtitle: Text('subtitle'),
          leading: leading,
          trailing: trailing,
        );
      },
    );
  }
}
