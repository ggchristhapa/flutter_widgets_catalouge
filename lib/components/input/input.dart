import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputWidget extends StatelessWidget {
  InputWidget({
    this.controller,
    this.label,
    this.textColor,
    this.passwordText,
    this.enable,
    this.inputType,
    this.onChange,
  });
  var controller;
  var label;
  var textColor;
  var inputType;
  var passwordText;
  var enable;
  var onChange;
  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
        fillColor: Colors.black.withOpacity(0.1),
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(50.0),
          ),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            label,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
            onChanged: (value) async {
              await onChange(value);
            },
            enabled: enable == false ? false : true,
            controller: controller,
            keyboardType: inputType,
            obscureText: passwordText == true ? passwordText : false,
            decoration: inputDecoration),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
