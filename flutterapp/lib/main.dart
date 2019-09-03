import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
  title: "Exploring dynamic lists",
  home: Scaffold(
    appBar: AppBar(title:Text("Dynamic lists")),
    body: getListView(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        debugPrint("FAB clicked");
      },
      child: Icon(Icons.add),
      tooltip: 'Add more item',
    ),
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
          leading: Icon(Icons.arrow_right,),
          title: Text(listItems[index]),
          onTap: (){
            showSnackBar(context, listItems[index]);
//            print("List ${listItems[index]} clicked");
          },
        );
  }
  );
  return listView;
}

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint("Performing dummy UNDO operation");
      },
    ),
  );
      Scaffold.of(context).showSnackBar(snackBar);
}