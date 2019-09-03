import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FirstApp(),));

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppName"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Hello',style: TextStyle(fontSize:20, fontStyle: FontStyle.italic))
          ],
        ),
      ),
    );
  }
}
