import 'package:flutter/material.dart';
import 'package:riddhasoft_utils/screens/home/index.dart';

BottomAppBar bottomAppBarWidget(context, {required Function onTap}) {
  final emptyIcon = Opacity(
    opacity: 0,
    child: IconButton(icon: Icon(Icons.no_cell), onPressed: () {}),
  );

  return BottomAppBar(
    notchMargin: 12,
    shape: const CircularNotchedRectangle(),
    child: Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: Icon(Icons.help),
              onPressed: () async {
                await onTap(0);
              }),
          IconButton(
              icon: Icon(Icons.clean_hands),
              onPressed: () {
                onTap(1);
              }),
          emptyIcon,
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                onTap(2);
              }),
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                onTap(3);
              }),
        ],
      ),
    ),
  );
}

FloatingActionButton floationActionButtonHome(context) {
  return FloatingActionButton(
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    },
    tooltip: 'Home',
    backgroundColor: Colors.white,
    child: Icon(
      Icons.home,
      color: Colors.red,
    ),
  );
}
