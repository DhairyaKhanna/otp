import 'package:flutter/material.dart';
import 'package:otp/Screens/PhoneNoScreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhoneNoScreen(),
    );
  }
}
