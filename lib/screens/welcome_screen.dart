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

//class _WelcomeScreenState extends State<WelcomeScreen>{
  bool showSpinner = false;

  
  class _WelcomeScreenState extends State<WelcomeScreen>with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.white, end: Colors.amber)
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

  //   LiquidCustomProgressIndicator(
  //   value: 0.2 // Defailts to 0.5.
  //   valueColor: AlwaysStoppedAnimation(Colors.amber), // Defaults to the current Theme's accentColor.
  //   backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
  //   direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right).
  //   shapePath: _buildBoatPath(), // A Path object used to draw the shape of the progress indicator.
  // )



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
                child: Image.asset('assets/images/HGPAssets_Emblem_White.png'),
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
