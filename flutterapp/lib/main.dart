import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
  title: "Exploring dynamic lists",
  home: Scaffold(
    appBar: AppBar(title:Text("Dynamic lists")),
    body: getListView(),
  ),

));

List<String> getListElements(){
  var items = List<String>.generate(100, (counter) =>"Item $counter");
  return items;
}

Widget getListView(){
  var listItems = getListElements();
  
  var listView = ListView.builder(
      itemBuilder: (context,index){
        return ListTile(
          title: Text(listItems[index]),
        );
  }
  );
  return listView;
}