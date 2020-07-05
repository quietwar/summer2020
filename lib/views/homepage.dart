import 'package:Summer2020/helper_functions/helper_functions.dart';
import 'package:Summer2020/pages/la1.dart';
import 'package:Summer2020/pages/oak7.dart';
import 'package:Summer2020/pages/oak8.dart';
import 'package:Summer2020/pages/rich3.dart';
import 'package:Summer2020/pages/rich4.dart';
import 'package:flutter/cupertino.dart';
//import 'package:Summer2020/services/database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  static const String id = 'homePage';

   HomePage({this.username, this.userEmail});
  String username;
   final String userEmail;
   @override
  _HomePageState createState() => _HomePageState();
}
String uId = "gnpH1r191xOYLMIsIZgvxNSx5X53";

class _HomePageState extends State<HomePage> {
  
  Stream taskStream;

   //DatabaseServices databaseServices = new DatabaseServices();

   String date;
  TextEditingController taskEdittingControler = new TextEditingController();


  @override
  void initState() {

     var now = DateTime.now();
      date = "${HelperFunctions.getWeek(now.weekday)} ${HelperFunctions.getYear(now.month)} ${now.day}";

      //databaseServices.getTasks(uId).then((val){

        //taskStream = val;
        setState(() {});
 

      super.initState();
    }
    
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
        }),
      title: Text('Welcome to Summer 2020'),
      actions: <Widget>[IconButton(icon: Icon(FontAwesomeIcons.calendarAlt), onPressed: () {
        }),
       ],
      ),
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 3.0,
        children: <Widget>[
            hgpCohorts("hgpLa1", "assets/images/isiahTeaching.jpg", 0xFF02b5e0, 0xFF02cabd),
            hgpCohorts("hgpOak7", "assets/images/allCohorts17.jpg", 0xFF965ffe, 0xFF3c8efe),
            hgpCohorts("hgpOak8", "assets/images/malik_spiderman.jpg", 0xFF07dfaf, 0xFF47e544),
            hgpCohorts("hgpRich3", "assets/images/Rich8.1.png", 0xFFffda00, 0xFFffa500),
            hgpCohorts("hgpRich4", "assets/images/techslam.JPG", 0xFFffa15b, 0xFFfe6075),
          ],
        )
      );
    }
      

  Widget hgpCohorts(String gridName, String gridimage, int color1, int color2,) {
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
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.3,
            child: Container(
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(gridimage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(child:Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                
                children: <Widget>[
                  Container(child:Text("Hgp", style: TextStyle(color: Colors.white, fontSize: 16),)),
                  SizedBox(width: 10.0),
                  Container(child: Icon(FontAwesomeIcons.codepen, color: Colors.white,)),
                  SizedBox(width: 10.0),
                  Container(child:Text("Cohort", style: TextStyle(color: Colors.white, fontSize: 16),)),
                ],)),
                  SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child:Text(gridName, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                ],)
            ],
          ),
          );
        }}


  //           child: Row:(


  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,), onPressed: () {
  //                   //
  //                 }),),),
  //               Expanded(
  //                 flex: 5,
  //                 child:Container(child:Text('LA1', style:
  //                 TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.w600,
  //                     fontSize: 28.0
  //                 ),),),),
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.search,color: Colors.white,), onPressed: () {
  //                       Navigator.pushNamed(context, HgpLa1.id);
  //                   //
  //                 }),),),
  //             ],)
  //       ),
  //     ),
  //   );
  // }

  // Widget _hgpRich4() {
  //   return Container(
  //     height: 150.0,
  //     width: MediaQuery
  //         .of(context)
  //         .size
  //         .width,

  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //           colors: [ Color(0xffebac38), Color(0xffde4d2a)],
  //           begin: Alignment.centerRight,
  //           end: Alignment(-1.0, -2.0)
  //       ), //Gradient
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.only(top: 16.0),
  //       child: Center(
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,), onPressed: () {
  //                   //
  //                 }),),),
  //               Expanded(
  //                 flex: 5,
  //                 child:Container(child:Text('Rich4', style:
  //                 TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.w600,
  //                     fontSize: 28.0
  //                 ),),),),
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.chartLine,color: Colors.white,), onPressed: () {
  //                       Navigator.pushNamed(context, HgpRich4.id);
  //                   //
  //                 }),),),
  //             ],)
  //       ),
  //     ),
  //   );
  // }

  // Widget _hgpRich3() {
  //   return Container(
  //     height: 150.0,
  //     width: MediaQuery
  //         .of(context)
  //         .size
  //         .width,

  //     decoration: BoxDecoration(
  //       gradient: new LinearGradient(
  //         colors: [
  //           const Color(0xff662d8c),
  //           const Color(0xffed1e79),
  //         ],
  //         begin: Alignment.centerRight,
  //         end: new Alignment(-1.0, -1.0),
  //       ),
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.only(top: 16.0),
  //       child: Center(
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,), onPressed: () {
  //                   //
  //                 }),),),
  //               Expanded(
  //                 flex: 5,
  //                 child:Container(child:Text('Rich3', style:
  //                 TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.w600,
  //                     fontSize: 28.0
  //                 ),),),),
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.cartPlus,color: Colors.white,), onPressed: () {
  //                       Navigator.pushNamed(context, HgpRich3.id);
  //                   //
  //                 }),),),
  //             ],)
  //       ),
  //     ),
  //   );
  // }

  // Widget _hgpOak7() {
  //   return Container(
  //     height: 150.0,
  //     width: MediaQuery
  //         .of(context)
  //         .size
  //         .width,

  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //           colors: [ Color(0xFF5032b6), Color(0xFFb765d3)],
  //           begin: Alignment.centerRight,
  //           end: Alignment(-1.0, -2.0)
  //       ), //Gradient
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.only(top: 16.0),
  //       child: Center(
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,), onPressed: () {
  //                   //
  //                 }),),),
  //               Expanded(
  //                 flex: 5,
  //                 child:Container(child:Text('Oak7', style:
  //                 TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.w600,
  //                     fontSize: 28.0
  //                 ),),),),
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.chartLine,color: Colors.white,), onPressed: () {
  //                       Navigator.pushNamed(context, HgpOak7.id);
  //                   //
  //                 }),),),
  //             ],)
  //       ),
  //     ),
  //   );
  // }
  
  // Widget _hgpOak8() {
  //   return Container(
  //     height: 150.0,
  //     width: MediaQuery
  //         .of(context)
  //         .size
  //         .width,

  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //           colors: [ Color(0xFF1CD8D2), Color(0xFF93EDC7)],
  //           begin: Alignment.centerRight,
  //           end: Alignment(-1.0, -2.0)
  //       ), //Gradient
  //     ),
  //     child: Padding(
  //       padding: const EdgeInsets.only(top: 16.0),
  //       child: Center(
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.home,color: Colors.white,), onPressed: () {
  //                       Navigator.pop(context);
  //                   //
  //                 }),),),
  //               Expanded(
  //                 flex: 5,
  //                 child:Container(child:Text('Oak8', style:
  //                 TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.w600,
  //                     fontSize: 28.0
  //                 ),),),),
  //               Expanded(
  //                 flex: 1,
  //                 child:Container(child:IconButton(
  //                     icon: Icon(FontAwesomeIcons.chartLine,color: Colors.white,), onPressed: () {
  //                       Navigator.pushNamed(context, HgpOak8.id);
  //                   //
  //                 }),),),
  //             ],)
  //       ),
  //     ),
  //   );
 // }}

  

