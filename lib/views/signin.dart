import 'package:flutter/material.dart';
import 'package:Summer2020/services/auth.dart';
import 'package:Summer2020/widgets/widget.dart';

class SingIn extends StatefulWidget {
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {

  AuthService authService = new AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets().mainApp(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/HGPAssets_PrimaryLogo_Yellow.png", height: 250,),
            SizedBox(height: 8,),
            Text("Welcome Geniuses to Summer 2020!", style: TextStyle(
              fontSize: 17
            ),),
            SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                authService.signInWithGoogle(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xffFF5964),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text("Sign in With Google", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
