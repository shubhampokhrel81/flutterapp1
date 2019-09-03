import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",
      home: Scaffold(
        appBar: AppBar(title: Text("My First App Screen"),backgroundColor: Colors.blueGrey,),
        body: Material(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Text(
              "Hello World",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white,fontSize: 40.0),
            ),
          ),
        ),
      ),
    );
  }

}

