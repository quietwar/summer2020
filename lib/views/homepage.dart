import 'package:Summer2020/helper_functions/helper_functions.dart';
//import 'package:Summer2020/services/database.dart';
//import 'package:Summer2020/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:Summer2020/views/myappbar.dart';

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
    
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          
          Image.asset('https://hiddengeniusproject.org',
            ///images.unsplash.com/photo-1496254738104-fc408389bbac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
            
          ),
          _titleContainer(),
          SizedBox(height: 10.0),
          _detailsContainer(),
          _chipContainer(),
          SizedBox(height: 30.0),
          _listView(),
          _nextButton(),
        ],
      ),
    );
  }

  Widget _listView(){
    // var cohorts = ["Oak7", "Oak8", "Rich3", "Rich4", "LA1"];
    // var myGridView = new GridView.builder(
    //   itemCount: cohorts.length,
    //   gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //   itemBuilder: (BuildContext context, int index) {
    //     return new GestureDetector(
    //       child: new Card(
    //         elevation: 5.0,
    //         child: new Container(
    //           alignment: Alignment.centerLeft,
    //           margin: new EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
    //           child: new Text(cohorts[index]),
    //         ),
    //       ),
    //       onTap: () {
             
    //         showDialog(
    //          barrierDismissible: false,
    //          context: context,
    //          child: new CupertinoAlertDialog(
    //            title: new Column(
    //              children: <Widget>[
    //                new Text("Cohorts"),
    //                new Icon(
    //                  Icons.favorite,
    //                  color:Colors.red,
    //               ),
    //             ],
    //           ).
    //           content: new Text( cohorts[index]),
    //           actions: <Widget>[
    //             new FlatButton(
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               },
    //               child: new Text("Ok"))
    //           ],
    //         ));
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 50.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xFF5032b6),
                  const Color(0xFFb765d3),
                ],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0),
              ),
            ),
          ),
          SizedBox(width: 50.0),
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xffebac38),
                  const Color(0xffde4d2a),

                ],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0),
              ),
            ),
          ),
          SizedBox(width: 50.0),
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xff662d8c),
                  const Color(0xffed1e79),
                ],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0),
              ),
            ),
          ),
          SizedBox(width: 50.0),
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xFF1CD8D2),
                  const Color(0xFF93EDC7),
                ],
                begin: Alignment.centerRight,
                end: new Alignment(-1.0, -1.0),
              ),
            ),
          ),
        ], //gridDelegate: null,
      ),
    );
  }
  Widget _nextButton() {
    return Container(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[Text ("$date"),
        Container(
          child: myButtons("Prev", 0xFF975efe, 0xFF448afe),),
        Container(child: myButtons("Next", 0xFF975efe, 0xFF448afe),)
      ],));
  }

  Widget _titleContainer() {
    return Container(child: Text("My Day", style:TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        
    ),));
  }

  Widget _detailsContainer() {
    return Container(child: Text(
      'Geniuses, please locate and select your cohort to see your days schedule!',style:TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 18.0
    ),));
  }


  RaisedGradientChip myChips(String chipName, int color1, int color2) {
    return RaisedGradientChip(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Container(child: Text(
                chipName,
                style: TextStyle(color: Colors.white),
              ),),
            ),
            Container(child: Container(child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.times, color: Colors.white, size: 15.0,),
                onPressed: () {
                  //
                }),),),
          ],),
        gradient: LinearGradient(
          colors: <Color>[Color(color1), Color(color2)],
        ),
        onPressed: () {
          print('button clicked');
        }
    );
  }

  RaisedGradientButton myButtons(String chipName, int color1, int color2) {
    return RaisedGradientButton(
        child: Text(
          chipName,
          style: TextStyle(color: Colors.white),
        ),
        gradient: LinearGradient(
          colors: <Color>[Color(color1), Color(color2)],
        ),
        onPressed: () {
          print('button clicked');
        }
    );
  }

  Widget _chipContainer() {
    return Column(
      children: <Widget>[
        SizedBox(height: 40.0),
        Wrap(
          direction: Axis.vertical,
          //crossAxisAlignment: 2.0,
          spacing: 10.0,
          runSpacing: 5.0,
          children: <Widget>[
            myChips("Oak7", 0xFF02b5e0, 0xFF02cabd),
            myChips("Oak8", 0xFF965ffe, 0xFF3c8efe),
            myChips("LA1", 0xFF07dfaf, 0xFF47e544),
            myChips("Rich3", 0xFFffda00, 0xFFffa500),
            myChips("Rich4", 0xFFffa15b, 0xFFfe6075),
          ],
        ),

      ],);
  }

}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 50.0,
      decoration: BoxDecoration(gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

class RaisedGradientChip extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientChip({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 30.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
   }
  }

  


 

          // GestureDetector(
          //   onTap: (){
          //     DatabaseServices().deleteTask(uId, widget.documentId);
          //   },
          //   child: Icon(
          //     Icons.close, size: 13, color: Colors.black87.withOpacity(0.7)
          //   ),
          // )
  
  


