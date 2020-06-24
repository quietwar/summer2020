// import 'dart:js';
import 'package:Summer2020/helper_functions/helper_functions.dart';
import 'package:Summer2020/services/database.dart';
import 'package:Summer2020/views/homepage.dart';
// import 'package:Summer2020/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:Summer2020/views/myappbar.dart';
  
  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Summer 2020',
      home: new Home(),
      darkTheme: new ThemeData.dark(),
    );
  }
}

class Home extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeState createState() => _HomeState();
}

//String uId = "gnpH1r191xOYLMIsIZgvxNSx5X53";

class _HomeState extends State<Home> {

  @override
//   Stream taskStream;

   DatabaseServices databaseServices = new DatabaseServices();

  String date;
  TextEditingController taskEdittingControler = new TextEditingController();



   
  void initState() {

    var now = DateTime.now();
    date = "${HelperFunctions.getWeek(now.weekday)} ${HelperFunctions.getYear(now.month)} ${now.day}";

    databaseServices.getTasks(uId).then((val){

     // taskStream = val;
      setState(() {});

    });

    super.initState();
  }
   
   
  

  Widget build(BuildContext context){
    var cohorts = ["Oak7", "Oak8", "Rich3", "Rich4", "LA1"];
    var myGridView = new GridView.builder(
      itemCount: cohorts.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new GestureDetector(
          child: new Card(
            elevation: 5.0,
            child: new Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: new Text(cohorts[index]),
            ),
          ),
          onTap: () {
             
            // showDialog(
            //  barrierDismissible: false,
            //  context: context,
            //  child: new CupertinoAlertDialog(
            //    title: new Column(
            //      children: <Widget>[
            //        new Text("Cohorts"),
            //        new Icon(
            //          Icons.favorite,
            //          color:Colors.red,
            //       ),
            //     ],
            //   ).
            //   content: new Text( cohorts[index]),
            //   actions: <Widget>[
            //     new FlatButton(
            //       onPressed: () {
            //         Navigator.of(context).pop();
            //       },
            //       child: new Text("Ok"))
            //   ],
            // ));
           
         },
       );

     },
   );
   
   //final title = 'Grid List'; 
   return Container ( 
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/HGP_PrimaryLogo_Yellow.png"),
              fit: BoxFit.cover
              ),
            ),
           
   
   child: Scaffold(
      appBar:  AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){

        }),
      title: Text("Welcome Geniuses To Summer 2020!"),
      actions: <Widget> [
        IconButton(icon: Icon(
          FontAwesomeIcons.calendarAlt), onPressed: () {

        }),
        ],
      ),
      body: 
      myGridView,
         
          ),
     );    
    
  }

void main() {
  runApp(MyApp());
  Container ( 
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/PrimaryLogo_Yellow.png"),
              fit: BoxFit.cover
              ),
            ),
           );
}
}
//       (
//         crossAxisCount: 2,
//         padding: EdgeInsets.all(16),
//         childAspectRatio: 0.9,
//         crossAxisSpacing: 10.0,
//         mainAxisSpacing: 10.0,
 
            
        

//       Widget myGridItemes(String gridName,
//             String gridimage, 
//             int color1, 
//             int color2){
//         return Container(
//           decoration: new BoxDecoration(
//               borderRadius: BorderRadius.circular(24.0),
//               gradient: new LinearGradient(
//               colors: [
//                 Color(color1),
//                 Color(color2),
//                ],
//                begin: Alignment.centerLeft,
//                end: new Alignment(1, 1),
//               ),
//               ),

// //       child: Stack(
//         children: <Widget>[
//           Opacity(
//             opacity: 0.3,
//             child:Container(
//               decoration: new BoxDecoration(
//                 borderRadius: BorderRadius.circular(24.0),
//                 image: DecorationImage(
//                 image: new NetworkImage(
//                   gridimage),
//                   fit: BoxFit.fill,
//                   ),
//             ),
//           ),
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(child:Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(child:Text("Job",style:
//                   TextStyle(color: Colors.white, fontSize: 16),)),
//                   //Sizedbox:(witdh:10.0),
//                 Container(child:Icon(
//                   FontAwesomeIcons.compass,color: Colors.white)),
//                   //Sizedbox:(witdh:10.0),
//                 Container(child:Text("Guide",style:
//                   TextStyle(color: Colors.white, fontSize: 16),)),
//                   //Sizedbox:(witdh:10.0)
//               ],
//                 )),
              
//           Padding(
//             padding: const EdgeInsets.only(left:16.0),
//             child:Text(gridName, style: TextStyle(color: Colors.white,
//             fontSize:20,
//             fontWeight: FontWeight.bold),)),
//             ],),
//         ],
//         ),
//       );
// }
 

