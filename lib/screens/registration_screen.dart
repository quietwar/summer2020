import 'package:Summer2020/components/rounded_button.dart';
import 'package:Summer2020/constants.dart';
import 'package:Summer2020/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  bool showSpinner = false;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.0),
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
                email = value;
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
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
                
                ),
              ),
            
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Register', 
              color: Colors.amber, 
              onPressed: () async {
                setState(() {
                  showSpinner = true;
                });
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                  email: email, password: password);
                if (newUser != null) {
                  Navigator.pushNamed(context, ChatScreen.id);
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
