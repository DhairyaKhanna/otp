import 'package:flutter/material.dart';
import 'package:otp/constants.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({this.number, this.otp});

  final String number;
  final List<String> otp;

  @override
  Widget build(BuildContext context) {
    List<String> actualValue = ['1', '2', '3', '4'];

    bool verification() {
      if (actualValue == otp) {
        return true;
      } else {
        return false;
      }
    }

    return Scaffold(
        backgroundColor: kbgcolor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(top: 40),
                width: 300,
                height: 250,
                decoration: kContainerdecoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Welcome +91 $number',
                      style: ktextStyle,
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          verification()
                              ? 'Verification successful'
                              : 'Verification denied',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                          color: verification() ? Colors.green : Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
