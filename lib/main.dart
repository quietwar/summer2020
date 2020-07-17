//import 'package:Summer2020/screens/login_screen.dart';
import 'package:Summer2020/pages/la1.dart';
import 'package:Summer2020/pages/oak7.dart';
import 'package:Summer2020/pages/oak8.dart';
import 'package:Summer2020/pages/rich3.dart';
import 'package:Summer2020/pages/rich4.dart';
import 'package:Summer2020/screens/chat_screen.dart';
import 'package:Summer2020/screens/login_screen.dart';
import 'package:Summer2020/screens/registration_screen.dart';
import 'package:Summer2020/screens/welcome_screen.dart';
import 'package:Summer2020/views/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final title = 'Grid List';

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.black, scaffoldBackgroundColor: Colors.amber),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HgpLa1.id: (context) => HgpLa1(),
        HgpOak7.id: (context) => HgpOak7(),
        HgpOak8.id: (context) => HgpOak8(),
        HgpRich3.id: (context) => HgpRich3(),
        HgpRich4.id: (context) => HgpRich4(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
