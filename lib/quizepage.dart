import 'dart:convert';

import 'package:flutter/material.dart';

class getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
      builder: (context, snapshot) {
        var mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return quizpage();
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  @override
  _quizpageState createState() => _quizpageState();
}

 Widget choicebutton(){
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    child: MaterialButton(
      onPressed: (){},
      child: Text(
        "option 1",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Alike",
          fontSize: 16.0,
        ),
        maxLines: 1,
      ),
      color:  Colors.indigo ,
      splashColor: Colors.indigoAccent[700],
      highlightColor:  Colors.indigoAccent[700],
      minWidth: 200.0,
      height:  45.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
  );
 }

class _quizpageState extends State<quizpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
               child: Text(

                 "This is a sample question which will be displayed ?",
                 style: TextStyle(
                   fontSize: 16.0,
                   fontFamily: "Quando"
                 ),
               ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  choicebutton(),
                  choicebutton(),
                  choicebutton(),
                  choicebutton(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topCenter,
               child:  Center(
               child: Text(
                 "30",
                 style: TextStyle(
                   fontSize: 35.0,
                   fontWeight:  FontWeight.w700,
                   fontFamily:  "Times New Roman",
                 ),
               ),
               ),
            ),
          ),

        ],
      ),
    );
  }
}
