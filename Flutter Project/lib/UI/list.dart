import 'package:flutter/material.dart';


class ListTilesView extends StatefulWidget {
  ListTilesView({Key key}) : super(key: key);

  @override
  _ListTilesViewState createState() => _ListTilesViewState();
}

class _ListTilesViewState extends State<ListTilesView> {

  final list = [
    "Demo1" , "Demo2" , "Demo3"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.purple.shade800,
       title:Text("Lists"),
       
     ),
       body: ListView.builder( 
         
         itemCount:list.length,
         itemBuilder: (BuildContext context,int index)
         {
           return Card(
              margin: EdgeInsets.only(top:10),
             color: Colors.purple.shade50,
             child:ListTile(
               title:Text("${list[index]}")
             )
           );
         }),
    );
  }
}