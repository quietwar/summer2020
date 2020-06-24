import 'package:Summer2020/components/rounded_button.dart';
import 'package:Summer2020/screens/login_screen.dart';
import 'package:Summer2020/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
          children: <Widget>[
            Hero(tag: 'logo', 
            child: 
            Container(
              child: Image.asset('images/HGP_Yellow_small.png'),
              height: 80.0,
               
              ),
            ),
              SizedBox(
                width: 250.0,
                child: TextLiquidFill(
                      text: 'Welcome to HGP 2020',
                      waveColor: Colors.amber,
                      boxBackgroundColor: Colors.black,
                      textStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      boxHeight: 200.0,
                      boxWidth: 400.00
                ),
              ),
          ],
        ),
        SizedBox(
          height: 48.0,
        ),
        RoundedButton(
          title: 'Log in', 
          color: Colors.amber, 
          onPressed: () {
          Navigator.pushNamed(context, LoginScreen.id);
          },
        ),
        RoundedButton(
          title: 'Register', 
          color: Colors.amber, 
           onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
