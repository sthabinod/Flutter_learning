import 'package:flutter/material.dart';


class AddNotes extends StatefulWidget {
  AddNotes({Key key}) : super(key: key);

  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Form(
             child: Column(
               children: <Widget>[
                Text("hello"),
               ],
             )
             )
         ],
       ),
    );
  }
}