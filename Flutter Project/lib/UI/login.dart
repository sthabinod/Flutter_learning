import 'dart:ui';
import 'package:testdrive/UI/home_page.dart';

import 'animation.dart';

import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String email = "stha.binod1000@gmail.com";
  String password = "binod090";
  TextEditingController _email;
  TextEditingController _password;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          FadeAnimation(1.6,Container(
            height:400,
            decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover
              )
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  height: 200,
                  width: 80,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image:AssetImage('assets/images/l.png')
                      )
                    ),
                  )
                  ),
                  // Positioned(
                  //     height: 130,
                  //     width: 60,
                  //     left: 80,
                  //   child:Container(
                    
                  //     decoration: BoxDecoration(
                  //       image:DecorationImage(
                  //         image:AssetImage('assets/images/l2.png')
                  //       )
                  //     ),
                  //   )
                  //   ),

                    Positioned(
                      // left: 40,
                      width: 120,
                      top:240,
                      right: 140,
                      child: Container(
                        child:Container(
                          child:Text("Login",style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,

                          ),)
                        )
                      )
                      )
              ],
            ),
            
          ),
          ),

          Center(
            child: Padding(
              
              padding: const EdgeInsets.all(50.0),
              child: Column(
                
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border:Border(bottom:BorderSide(color:Colors.grey[100]))
                    ),
                    child: TextField(
                      controller: _email,
                      decoration:InputDecoration(
                        border:InputBorder.none,
                        hintText: "Email or phone",
                        hintStyle: TextStyle(
                          color: Colors.grey[400]
                        )
                      )
                    ),
                  ),
                         Container(
                             decoration: BoxDecoration(
                      border:Border(bottom:BorderSide(color:Colors.grey[100]))
                    ),
                child: TextField(
                  controller: _password,
                  decoration:InputDecoration(
                    border:InputBorder.none,
                    hintText: "password",
                    hintStyle: TextStyle(
                      color: Colors.grey[400]
                    )
                  )
                ),
              ),

              SizedBox(
                height:30,
                
              ),
              FlatButton(onPressed:(){
                checkInput();
              },
                             child:   Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10)
              ,
                            gradient: LinearGradient(
                              colors:[
                                Color.fromRGBO(141, 148, 251, 1),
                                Color.fromRGBO(143, 147, 251, 6)
                              ]
                            )
                            
                              ),
                              child: Center(
                                    child:Text("Login",style: TextStyle(
                                      color:Colors.white,fontWeight:FontWeight.bold,
                                      fontSize: 13
                                    ),
                                    
                                    ),
                              ),
                            ),
                             ),
                          
              
                             Column(
                               children: <Widget>[
                                  Container(
                                    height: 50,
                                    child:Text("Forgot Password?",style: TextStyle(
                                      color:Colors.white,fontWeight:FontWeight.w100,
                                      fontSize: 100
                                    ),
                                    ),
                              ),
                                  
                               ],
                                    
                             )
                              ],
                            ),
                          ),
                        ),
                      
              
                    
                      ],
                    ),
                    
                    
              
                     
                  );
                }
              
             
                checkInput() {

                  String new_email = _email.text.toString();
                  String new_password = _password.text.toString();
                  if(_email.text.isEmpty && _password.text.isEmpty)
                  {
                    print("Empty");
                  }
                  else if( new_email == email )
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  }
                  else
                  {
                    print(_email.text.toString());
                  }
                }
}