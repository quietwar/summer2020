import 'package:Summer2020/components/rounded_button.dart';
import 'package:Summer2020/screens/login_screen.dart';
import 'package:Summer2020/screens/registration_screen.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
//import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>{
  bool showSpinner = false;

  
    //with SingleTickerProviderStateMixin 
  // AnimationController controller;
  // Animation animation;

  // @override
  // void initState() {
  //   super.initState();

  //   controller =
  //       AnimationController(duration: Duration(seconds: 1), vsync: this);
  //   animation = ColorTween(begin: Colors.white, end: Colors.amber)
  //       .animate(controller);
  //   controller.forward();
  //   controller.addListener(() {
  //     setState(() {});
  //   });
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner, 
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(tag: 'logo', 
              child: 
              Container(
                child: Image.asset('images/HGP_Yellow_small.png'),
                height: 500.0,
                ),
              ),
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
     ),
    );
  }
}
