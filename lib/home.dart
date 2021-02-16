import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
    "images/linux.png",
  ];

  Widget customcard(String langeuname,image){
    return Padding(
      padding: EdgeInsets.all(20.0,),
      child: InkWell(
        onTap: (){
          debugPrint("Card Taped");
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0,),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(100),

                  child: Container(
                    height: 200,
                    width: 200,
                    child: ClipOval( 
                     child: Image(
                       image: AssetImage(
                         image,
                       ),
                     ),
                    ),
                  ),
                ),
                ),
                Center(
                  child: Text(
                    langeuname,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontFamily: "Alike",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "This is some random description",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Alike"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quizstar",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      body: ListView(
        children: [
          customcard("Python",images[0]),
          customcard("Java",images[1]),
          customcard("JavaScript",images[2]),
          customcard("C++",images[3]),
          customcard("Linux",images[4]),
        ],
      ),
    );
  }
}
