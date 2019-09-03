import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    title: "Exploring UI Widgets",
    home:Scaffold(
      appBar: AppBar(title:Text("Widgets List"))  ,
      body: getListView(),
    ),
  ));
}

Widget getListView(){
  var listView = ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.landscape),
      title: Text("Landscape",style: TextStyle(color: Colors.blue, fontSize: 20.0),),
      subtitle: Text("Nepal is beautiful",style:TextStyle(fontSize: 15.0)),
      trailing: Icon(Icons.wb_sunny),
      onTap: (){
        print("hello"); //simply prints hello on console
      },
    ),
    ListTile(
      leading: Icon(Icons.laptop_chromebook),
      title: Text("Laptop",style: TextStyle(color: Colors.blue, fontSize: 20.0),),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text("Phone",style: TextStyle(color: Colors.blue, fontSize: 20.0),),
    ),
  ],
  );
  return listView;
}