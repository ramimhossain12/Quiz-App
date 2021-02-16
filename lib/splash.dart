import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage()  ));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Text(
          "QuizStart",
          style: TextStyle(fontSize: 50.0,),
        ),
      ),
    );
  }
}
