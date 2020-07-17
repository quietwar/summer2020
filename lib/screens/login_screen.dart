import 'package:Summer2020/components/rounded_button.dart';
import 'package:Summer2020/constants.dart';
import 'package:Summer2020/services/firebase_auth_service.dart';
import 'package:Summer2020/widget/google_sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Summer2020/views/homepage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_signin_button/button_view.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

enum AuthFormType {
  signIn,
  signUp,
  reset,
}

final primaryColor = const Color(0xFFb765d3);

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({Key key, this.email, this.password}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
  final String email;
  final String password;
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String _email;
  String _password;
  //String _userName;
  //String _imageUrl;

  String pwdValidator(String value) {
    if (value.length < 7) {
      return 'Password must be longer than 7 characters';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Form(
              key: formKey,
              child: Column(children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('assets/images/HGP_Yellow_small.png'),
                      height: 500.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter you HGP Email'),
                  onChanged: (input) => _email = input,
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (input) => _password = input,
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
                  onPressed: //_submitCommand,
                      () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final user =
                          await _firebaseAuth.signInWithEmailAndPassword(
                              email: _email, password: _password);
                      if (user != null) {
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
                SizedBox(
                  height: 10.0,
                ),
                // <Widget>[
                GoogleSignInButton(
                    //brightness: _brightness,
                    onPressed: () {
                  signInWithGoogle().whenComplete(
                    () {
                      Navigator.pushReplacementNamed(context, HomePage.id);

                      const snackBar = SnackBar(
                        content: Text('Signing in …'),
                      );

                      Scaffold.of(context).showSnackBar(snackBar);
                    },
                  );
                  //]
//                SignInButton(
//                  Buttons.Google,//width: 200.0,
//                  text: "Sign in with your HGP email",
//                  padding: EdgeInsets.all(10),
//                  onPressed: () {
//                    signInWithGoogle().whenComplete(() {
//                      Navigator.pushReplacementNamed(context, HomePage.id);
//                    }
//                    );
                }),
              ]),
            ),
          ),
        ));
  }
}

//  Widget showForgotPassword(bool visible) {
//   return Visibility(
//     child: FlatButton(
//       child: Text(
//         "Forgot Password?",
//         style: TextStyle(color: Colors.white),
//       ),
//       onPressed: () {
//         setState(() {
//           authFormType = AuthFormType.reset;
//         });
//       },
//     ),
//     visible: visible,
//   );
// }
