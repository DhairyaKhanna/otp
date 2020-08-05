import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widgets/TextFieldOTP.dart';
import 'package:otp/Screens/WelcomeScreen.dart';
import 'package:otp/constants.dart';
import '../Widgets/Button.dart';
import '../Widgets/StandardSizedBox.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({this.number});

  final String number;
  List<String> otpValue = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbgcolor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Fashion Store',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(top: 40),
                width: 300,
                height: 250,
                decoration: kContainerdecoration,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'OTP Verification',
                        style: ktextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Enter the OTP you received to',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '+91 $number',
                        style: ktextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFieldOTP(
                            onChanged: (value) {
                              otpValue.add(value);
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextFieldOTP(
                            onChanged: (value) {
                              otpValue.add(value);
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextFieldOTP(
                            onChanged: (value) {
                              otpValue.add(value);
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextFieldOTP(
                            onChanged: (value) {
                              otpValue.add(value);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Button(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              WelcomeScreen(number: number, otp: otpValue)));
                },
              )
            ],
          ),
        ));
  }
}
