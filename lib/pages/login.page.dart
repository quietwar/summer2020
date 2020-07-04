import 'package:flutter/material.dart';
import 'package:Summer2020/widget/button.dart';
import 'package:Summer2020/widget/first.dart';
//import 'package:Summer2020/widget/forgot.dart';
import 'package:Summer2020/widget/inputEmail.dart';
import 'package:Summer2020/widget/password.dart';
import 'package:Summer2020/widget/textLogin.dart';
import 'package:Summer2020/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


