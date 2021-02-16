import 'dart:convert';

import 'package:flutter/material.dart';

class getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(

      future: DefaultAssetBundle.of(context).loadString("assets/python,json"),
      builder: (context, snapshot){
        var mydata  = json.decode(snapshot.data.toString());
        if(mydata == null){
          return Scaffold(
             body: Center(
               child: Text(
                 "Loading",
               ),
             ),
          );
        }else{
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

class _quizpageState extends State<quizpage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
