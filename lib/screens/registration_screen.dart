import 'package:Summer2020/components/rounded_button.dart';
import 'package:Summer2020/constants.dart';
import 'package:Summer2020/models/users.dart';
import 'package:Summer2020/views/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Summer2020/services/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  RegistrationScreen({Key key}) : super(key: key);
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Future<User> currentUser() async {
    final user = await _firebaseAuth.currentUser();
    //return FirebaseUser user;
  }

  bool showSpinner = false;
  String email;
  String password;

  // final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  // TextEditingController firstNameInputController;
  // TextEditingController lastNameInputController;
  // TextEditingController emailInputController;
  // TextEditingController pwdInputController;
  // TextEditingController confirmPwdInputController;

  // @override
  // initState() {
  //   firstNameInputController = new TextEditingController();
  //   lastNameInputController = new TextEditingController();
  //   emailInputController = new TextEditingController();
  //   pwdInputController = new TextEditingController();
  //   confirmPwdInputController = new TextEditingController();
  //   super.initState();
  // }

  // String emailValidator(String value) {
  //   Pattern pattern =
  //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //   RegExp regex = new RegExp(pattern);
  //   if (!regex.hasMatch(value)) {
  //     return 'Email format is invalid';
  //   } else {
  //     return null;
  //   }
  // }

  // String pwdValidator(String value) {
  //   if (value.length < 7) {
  //     return 'Password must be longer than 7 characters';
  //   } else {
  //     return null;
  //   }
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
                child: Image.asset('assets/images/HGP_Yellow_small.png'),
                height: 500.0,
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              //validator:(EmailAuthProvider()),
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
                final newUser = await _firebaseAuth.createUserWithEmailAndPassword(
                  email: email, password: password);
                if (newUser != null) {
                  Navigator.pushNamed(context, HomePage.id);
                }
                 setState(() {
                  showSpinner = false;
                });
              } catch (e) {
                 print(e);
                 super.initState();
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
