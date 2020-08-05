import 'package:flutter/material.dart';

class TextFieldOTP extends StatelessWidget {
  TextFieldOTP({@required this.onChanged});
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      color: Color(0xcc89cff0),
      child: TextField(
        onChanged: onChanged,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: TextEditingController(),
      ),
    );
  }
}
