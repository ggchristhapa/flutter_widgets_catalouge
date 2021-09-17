import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/button/buttons.dart';
import 'package:riddhasoft_utils/components/listbuilder/listbuilder.dart';
import 'package:riddhasoft_utils/components/modal/modal.dart';

class ModalScreen extends StatelessWidget {
  const ModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Modals', centertitle: true),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ModalWidgets(),
            ButtonWidget(
              title: 'Bottom Sheet Modal',
              radius: 15.0,
              pressed: () {
                myModal(
                  context,
                  title: 'Title',
                  icon: Icons.add,
                  child: ListBuilderWidget(
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
              },
            )
          ],
        ),
      ),
    );
  }
}
