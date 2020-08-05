import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      onPressed: onPressed,
      color: Colors.pinkAccent,
      child: Text(
        'Continue',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
