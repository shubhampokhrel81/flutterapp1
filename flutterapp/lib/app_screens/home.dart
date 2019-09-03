import "package:flutter/material.dart";

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child : Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Text(
              "Flight",
              textDirection:TextDirection.ltr,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Chilanka',
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
          ),
      )
    );
  }
}