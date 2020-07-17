import 'dart:js';

import 'package:Summer2020/pages/la1.dart';
import 'package:Summer2020/pages/oak7.dart';
import 'package:Summer2020/pages/oak8.dart';
import 'package:Summer2020/pages/rich3.dart';
import 'package:Summer2020/pages/rich4.dart';
import 'package:Summer2020/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
//import 'package:Summer2020/services/database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static String id = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //pinned: true,
          leading: IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.id);
              }),
          title: Text('Welcome to Summer 2020'),
          actions: <Widget>[
            IconButton(
                icon: Icon(FontAwesomeIcons.user),
                onPressed: () {
                  Navigator.pushNamed(context, ChatScreen.id);
                }),
          ],
          backgroundColor: Colors.black,
          // background: Image.asset('assets/images/HGPAssets_Logotype_White.png', fit: BoxFit.cover),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 3.0,
          children: <Widget>[
            hgpCohorts("hgpLa1", "assets/images/isiahTeaching.jpg", "/HgpLa1",
                0xFF02b5e0, 0xFF02cabd),
            hgpCohorts("hgpOak7", "assets/images/allCohorts17.jpg", "/HgpOak7",
                0xFF965ffe, 0xFF3c8efe),
            hgpCohorts("hgpOak8", "assets/images/malik_spiderman.jpg",
                "/HgpOak8", 0xFF07dfaf, 0xFF47e544),
            hgpCohorts("hgpRich3", "assets/images/Rich8.1.png", "/HgpRich3",
                0xFFffda00, 0xFFffa500),
            hgpCohorts("hgpRich4", "assets/images/techslam.JPG", "/HgpRich4",
                0xFFffa15b, 0xFFfe6075),
          ],
        ));
  }

  Widget hgpCohorts(
    String gridName,
    String gridImage,
    String gridRoutes,
    int color1,
    int color2,
  ) {
    return Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              Color(color1),
              Color(color2),
            ],
            begin: Alignment.centerLeft,
            end: new Alignment(1.0, 1.0),
          ),
        ),
        child: Stack(children: <Widget>[
          Opacity(
            opacity: 0.3,
            child: Container(
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(gridImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Text(
                    "Hgp",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                  SizedBox(width: 10.0),
                  Container(
                      child: Icon(
                    FontAwesomeIcons.codepen,
                    color: Colors.white,
                  )),
                  SizedBox(width: 10.0),
                  Container(
                      child: Text(
                    "Cohort",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ],
              )),
              SizedBox(width: 10.0),
              Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    gridName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          //new GestureDetector(onTap: () {})
        ]));
  }

  gridIndex(BuildContext context, int index) {
    GestureDetector(onTap: () {
      Navigator.pushNamed(context, HgpLa1.id);
      //IndexedSlot(0, "hgpLa1");
    });
    GestureDetector(onTap: () {
      Navigator.pushNamed(context, HgpOak7.id);
      IndexedSlot(1, "hgpOak7");
    });
    GestureDetector(onTap: () {
      Navigator.pushNamed(context, HgpOak8.id);
      IndexedSlot(2, "hgpOak8");
    });
    GestureDetector(onTap: () {
      Navigator.pushNamed(context, HgpRich3.id);
      IndexedSlot(3, "hgpRich3");
    });
    GestureDetector(onTap: () {
      Navigator.pushNamed(context, HgpRich4.id);
      IndexedSlot(4, "hgpRich4");
    });
  }
}

//_HomePageState createState() => _HomePageState();

// String uId = "gnpH1r191xOYLMIsIZgvxNSx5X53";

// //class _HomePageState extends State<HomePage> {

//   Stream taskStream;

//    //DatabaseServices databaseServices = new DatabaseServices();

//    String date;

// @override
// void initState() {

//    var now = DateTime.now();
//     date = "${HelperFunctions.getWeek(now.weekday)} ${HelperFunctions.getYear(now.month)} ${now.day}";

//     //databaseServices.getTasks(uId).then((val){

//       //taskStream = val;
//       setState(() {});

//     super.initState();
//   }
