import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'otpScreen.dart';
import 'package:otp/constants.dart';
import '../Widgets/Button.dart';

class PhoneNoScreen extends StatelessWidget {
  String number;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbgcolor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Fashion Store',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Container(
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
                          'Your Phone!',
                          style: ktextStyle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Phone Number',
                          style: ktextStyle,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.phone),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              child: TextField(
                                onChanged: (value) {
                                  number = value;
                                },
                                cursorColor: Colors.blue,
                                cursorWidth: 2,
                                controller: TextEditingController(),
                                textAlign: TextAlign.start,
                                maxLength: 10,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: 'Enter number',
                                    hintStyle:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Button(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OtpScreen(number: number)));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
