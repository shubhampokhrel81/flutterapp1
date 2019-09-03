import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: EdgeInsets.only(left: 10.0,top: 30.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Flight",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Chilanka',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Hello Mount Everest",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Chilanka',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Flight 2",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Chilanka',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Hello Annapurna",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Chilanka',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
                FlightImageAsset(),
                FlightBookButton(),
              ],
            )));
  }
}

class FlightImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/Flag_of_Nepal.gif');
    Image image = Image(image: assetImage, width: 200.0,height: 200.0,);
    return Container(child: image);
  }
}

class FlightBookButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30.0),
      width: 250.0,
      height: 50.0,
      child:RaisedButton(
        color:Colors.deepOrange,
        child: Text(
          "Click Me",
          style: TextStyle(
            fontSize: 34.0,
            color: Colors.white,
            fontFamily: 'PlayfairDisplay',
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: 5.0,
        onPressed: (){
          bookFlight(context);
        },
      ),
    );
  }
  void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Button Clicked"),
      content:Text("Hello user"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
    }
    );
  }
}