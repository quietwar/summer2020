//import 'package:Summer2020/screens/welcome_screen.dart';
import 'package:Summer2020/screens/chat_screen.dart';
import 'package:Summer2020/screens/login_screen.dart';
import 'package:Summer2020/screens/registration_screen.dart';
import 'package:Summer2020/screens/welcome_screen.dart';
// import 'package:Summer2020/services/firebase_auth_service.dart';
// import 'package:Summer2020/views/homepage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:Summer2020/views/home.dart';
// import 'package:provider/provider.dart';
//import 'package:Summer2020/services/auth.dart';
// import 'package:Summer2020/views/signin.dart';
// import 'package:Summer2020/views/myappbar.dart';

// import 'package:flutter/foundation.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() =>
  runApp;

    

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final title = 'Grid List';

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.amber),
      // home: Consumer<User>(
      //   builder: (_, user, _) {
      //     if (user = !null) {
      //       return HomePage(;)
      //     }
      //   }

     initialRoute: WelcomeScreen.id,
      routes: { 
        //HomeScreen.id: (context) => HomeScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },     
    );
    
  }

    // return MaterialApp(
    //    home: Scaffold(
    //     appBar: AppBar(
    //             leading: IconButton(icon: Icon(Icons.menu), onPressed: (){

    //     }),
    //   title: Text("Welcome Geniuses To Summer 2020!"),
    //   actions: <Widget> [
    //     IconButton(icon: Icon(
    //         FontAwesomeIcons.calendarAlt), onPressed: () {

    //     }),
    //     ],
    //   ),
        
        // body: GridView.count(
        //   // Create a grid with 2 columns. If you change the scrollDirection to
        //   // horizontal, this produces 2 rows.
        //   crossAxisCount: 2,
        //   // Generate 100 widgets that display their index in the List.
        //   children: List.generate(6, (index) {
        //     return Center(
        //       child: Text(
        //         'Item $index',
        //         style: Theme.of(context).textTheme.headline5,
        //       ),
        //     );
        //   }),
        // ),
  //     ),
  //      //home: WelcomeScreen(),
  //   );
  // }
}