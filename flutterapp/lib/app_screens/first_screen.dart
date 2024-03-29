import 'dart:math';
import "package:flutter/material.dart";


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          generateRandomNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white,fontSize: 35.0),
        ),
      ),
    );
  }

  String generateRandomNumber(){

    var random = Random();
    int luckyNumber = random.nextInt(10);

    return "Your lucky number is: $luckyNumber";
}
}