import 'dart:ui';

import 'package:Summer2020/screens/chat_screen.dart';
import 'package:Summer2020/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 

class HgpRich4 extends StatefulWidget {
  static const String id = 'hgprich4';

  @override
  _HgpRich4State createState() => _HgpRich4State();
}

class _HgpRich4State extends State<HgpRich4>{
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.cannabis), onPressed: () {
              Navigator.pushNamed(context, HomePage.id);
          //
        }),
        title: Text("Richmond Cohort 4"),
        actions: <Widget>[
          IconButton(icon: Icon(
              FontAwesomeIcons.cannabis), onPressed: () {
                Navigator.pushNamed(context, ChatScreen.id);
            //
          }),
        ],
      ),
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,

                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://images.unsplash.com/photo-1515266591878-f93e32bc5937?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    )
                ),),
            ), //ConstrainedBox
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: infoCard(context, "Rich4"),
                ),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: frostedIconButton(
                          IconButton(
                              icon: Icon(FontAwesomeIcons.solidHeart,
                                color: Colors.white,),
                              onPressed: () {}),

                        ),
                      ),
                    ),

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: frostedIconButton(
                          IconButton(
                              icon: Icon(FontAwesomeIcons.share,
                                color: Colors.white,),
                              onPressed: () {}),

                        ),
                      ),
                    ),

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: frostedIconButton(
                          IconButton(
                              icon: Icon(FontAwesomeIcons.bookmark,
                                color: Colors.white,),
                              onPressed: () {}),

                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),


          ]
      ), //Stack
    );
  }

  Widget frostedIconButton(Widget child) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    shape: BoxShape.circle),
                child: child)));
  }


  Widget frostedEdged(Widget child) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: child));
  }

  Widget infoCard(BuildContext context, String title) {
    return frostedEdged(Container(
        key: ValueKey<String>(title),
        height: MediaQuery
            .of(context)
            .size
            .height / 4,
        width: MediaQuery
            .of(context)
            .size
            .width / 1.2,
        color: Colors.white.withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Rich4",
                  style: TextStyle(fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),),

              Text(
                "The Hidden Genius Project trains and mentors, Black Male youth in technology creation, entrepaurship and leasership skills, to trac=nsform their lives and community",
                style: TextStyle(fontSize: 18.0,color: Colors.white),
              ),

            ],
          ),
        )));
  }
}