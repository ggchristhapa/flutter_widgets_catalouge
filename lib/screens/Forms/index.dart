import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riddhasoft_utils/components/appbar/appbar.dart';
import 'package:riddhasoft_utils/components/input/input.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Form Components', centertitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            InputWidget(
              label: 'Normal Input Field',
            ),
            InputWidget(
              label: 'Password Field',
              passwordText: true,
            ),
            ListTile(
              title: Text('Switch'),
              trailing: Switch(value: true, onChanged: (value) {}),
            ),
            ListTile(
              title: Text('Radio Buttons'),
              trailing: Radio(
                value: false,
                groupValue: false,
                onChanged: (value) {},
              ),
            ),
            RangeSlider(
              values: RangeValues(0, 40),
              min: 0,
              max: 100,
              divisions: 5,
              labels: RangeLabels('0', '40'),
              onChanged: (RangeValues values) {},
            ),
          ],
        ),
      ),
    );
  }
}
