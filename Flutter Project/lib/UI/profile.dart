import 'dart:ui';

import 'package:flutter/material.dart';



class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Profile")
      ),
        
//  color:Colors.purple.shade50,
   body: Stack(
     
        // alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(50.0),
            height: 433,
            width: 300,
            color: Colors.purple.shade600,
            child: Column(
              
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:80.0,left: 50,right:50),
                  child: Text("Name: Binod Shrestha",
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 17
                  ),
                  ),
                  
                ),
                Column(
                  children: <Widget>[
               Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text("Address: Dharan, Nepal",
                  style: TextStyle(
                    color:Colors.white60,
                    fontSize: 13
                  ),
                  ),
                  
                ),

                  Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text("Mobile No: 9814927160",
                  style: TextStyle(
                    color:Colors.white60,
                    fontSize: 13
                  ),
                  ),
                  
                ),

                  Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text("College: Itahari International College",
                  style: TextStyle(
                    color:Colors.white60,
                    fontSize: 13
                  ),
                  ),
                  
                  
                ),

                

                 Padding(
                  padding: const EdgeInsets.all(3.0),
                
                  child: Container(
                    margin: EdgeInsets.only(top:20),
                      child:Column(
                        
                        children: <Widget>[
                          Image.asset("assets/images/budda.jpg")
                        ],
                      )
                    // decoration: BoxDecoration(
                    //   image:DecorationImage(
                    //     image:NetworkImage("https://1zl13gzmcsu3l9yq032yyf51-wpengine.netdna-ssl.com/wp-content/uploads/2018/05/Buddha-Quote-3-1068x561.jpg")
                    //   )
                    // ),
                  ),
                  
                  
                ),
                
                  ],
                )
              ],
            ),
            
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(left:150.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.red.shade900,
  border: Border.all(color:Colors.purple.shade500),
              image: DecorationImage(
                image:NetworkImage("https://binodshresthaa.com.np/img/binod.jpg"),
                
                fit: BoxFit.cover
              )
            ),

            
            
            
          ),
        ],
      ),
      );
     
      
   
  }
}




