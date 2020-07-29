import 'package:flutter/material.dart';
import 'package:testdrive/Model/maps.dart';
import 'package:testdrive/UI/list.dart';
import 'package:testdrive/UI/page_one.dart';
import 'package:testdrive/UI/page_three.dart';
import 'package:testdrive/UI/page_two.dart';
import 'package:testdrive/UI/profile.dart';

import 'add_notes.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   int _indexChange = 0;
   
  @override
  Widget build(BuildContext context) {




    Widget pages(int indexChange)
    {

      print(indexChange);
      switch(indexChange)
      {
        
        case 0: return PageOne();
        case 1: return PageTwo();
        case 2: return PageThree();
       
        break;
        default: return PageOne();
     
          
      }
    
    }


    
    
   
    return Scaffold(
      appBar: AppBar(
        title:Text("Summer"),
        backgroundColor: Colors.purple.shade800,
        actions:<Widget>
        [
          IconButton(
            icon: Icon(Icons.map),onPressed: ()=>{
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Maps(),
              ))
            }
            
          ),
          IconButton(
              icon:Icon(Icons.people),onPressed: ()=>{
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>Profile()))
              }
                        ),
                         IconButton(
                            icon:Icon(Icons.apps),onPressed: ()=>{
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context) => ListTilesView()
                              )
                              )
                            }
                        ),
                        ],
                    ),
                         body: pages(_indexChange),
                    
                    bottomNavigationBar: BottomNavigationBar(
                      
                      currentIndex: _indexChange,
                      onTap:(value)
                      {
                         _indexChange = value;
                          // print(_indexChange);
                        setState(() {
                         
                        });
                      },
              
                         items:[ 
                        BottomNavigationBarItem(icon: Icon(Icons.info),title: Text("Information"),backgroundColor: Colors.purple.shade800),
                        BottomNavigationBarItem(icon: Icon(Icons.pages),title: Text("Pages Url"),backgroundColor: Colors.purple.shade800),
                        BottomNavigationBarItem(icon: Icon(Icons.games),title: Text("Game"),backgroundColor: Colors.purple.shade800)
                      
                      ],
                            ),
              
                         
              
              
                          
                              
                          
                            floatingActionButton: FloatingActionButton(
                                child: FlatButton(
                                  child: Icon(Icons.note_add),color: Colors.purple.shade600,
                                ),onPressed: ()=>AddNotes(),
                            ),
                          );
                        }
              
             
                
        
        
  
}

