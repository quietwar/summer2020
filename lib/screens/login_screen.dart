import 'package:Summer2020/components/rounded_button.dart';
import 'package:Summer2020/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Summer2020/views/homepage.dart'; 
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
//import 'package:Summer2020/widgets/google_sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  
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
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
           ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Log in', 
              color: Colors.amber, 
              onPressed: () async {
                setState(() {
                  showSpinner = true;
                });
              try {
                final user = await _auth.signInWithEmailAndPassword(
                  email: email, password: password);
                if (user != null) {
                  Navigator.pushNamed(context, HomePage.id);
                }
                setState(() {
                  showSpinner = false;
                });
              } catch (e) {
                 print(e);
                }
              },
            ),
          ],
        ),
      ),
    ),
    );
  }
}
