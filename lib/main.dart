
//import 'package:Summer2020/screens/login_screen.dart';
import 'package:Summer2020/screens/login_screen.dart';
import 'package:Summer2020/screens/registration_screen.dart';
import 'package:Summer2020/screens/welcome_screen.dart';
import 'package:flutter/material.dart'; 


void main() => runApp(MyApp());

    

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final title = 'Grid List';

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.amber),
        home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: { 
        //HomeScreen.id: (context) => HomeScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        //ChatScreen.id: (context) => ChatScreen(),
      },     
    );
  }
}