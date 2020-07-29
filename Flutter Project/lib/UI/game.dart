import 'package:flutter/material.dart';
import 'package:testdrive/Model/question.dart';


class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override




                                          
                                           int index = 0;
                                            List question =[
                                           Question(" IOT device and embeded system are same?",false),
                                            Question( "The embeded system are not for general purposes. True/False",true),
                                             Question("The Internet of things does not need Internet. True/False",false),
                                             Question("Security is most important thing in internet of things. True/False",true),
                                              Question("Operating system is required for the Rasp pi.",true),
                                              Question("What are basic components of Internet of Things? Arduino | Eletronics | Web Application| Screw Driver", false)
                                          
                                          
                                            ];

  //                                           bool indexStatement = question.elementAt(index). 

  //                                             showGif()
  // {
  //   switch(indexed)
  //   {
  //     case true: return correct();
  //           case false: return wrong();
  //                       break;
  //                       default:
  //                       return tryLuck();
  //                                             }
  //                                           }
                                            Widget build(BuildContext context) {
                                              return Container(
                                                 child: Column(
                                                   children: <Widget>[
                                                     Padding(
                                                       padding: const EdgeInsets.all(10.0),
                                                       child: Column(
                                                         children: <Widget>[
                                                          //  Image(image:NetworkImage("https://cdn.educba.com/academy/wp-content/uploads/2018/10/IOT-interview-questions.jpg")),
                                                           Column(
                                                             children: <Widget>[
                                                               Padding(
                                                                 padding: const EdgeInsets.only(top:0.0),
                                                                 child: Container(
                                                                   margin: EdgeInsets.only(left:14),
                                                                   height: 70,
                                                                   width: 400,
                                                                   child:Text("${question.elementAt(index).question}",
                                                                   style: TextStyle(
                                                                     fontSize:17,
                                                                     fontWeight:FontWeight.w600
                                                                   ),
                                                                   )
                                                                 ),
                                                               ),
                                          
                                                           showGif(),
                                          
                                                                Padding(
                                                                 padding: const EdgeInsets.only(top:0.0),
                                                                 child: Center(
                                                                   child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                    children: <Widget>[
                                                                      RaisedButton(
                                                                        onPressed: ()
                                                                        {
                                                                            _checkAnswer(true,context);
                                                                        } ,
                                                                        child: Text("True",
                                                                         style: TextStyle(
                                                                          fontSize: 17
                                                                        ),),
                                                                        
                                                                        ),
                                                                      RaisedButton(
                                                                        onPressed: ()
                                                                        {
                                                                          _checkAnswer(false,context);
                                                                        }
                                                                        ,child: Text("False",
                                                                        style: TextStyle(
                                                                          fontSize: 17
                                                                        ),),
                                                                        
                                                                        
                                                                        ),
                                                                                                
                                                                                              ],
                                                                                             ),
                                                                 ),
                                                                                         ),
                                                                                       ],
                                                                                     )
                                                                                   ],
                                                                                 ),
                                                                                 
                                                                               )
                                                                             ],
                                                                           ),
                                                                        );
                                                                      }
                                                                    
                                                                      _checkAnswer(userChoice, BuildContext context) 
                                                                      {
                                                                        if(userChoice==question.elementAt(index).isCorrect)
                                                                        {
                                                                          print("True");
                                                                         
                                                                          // final snackBar = SnackBar(duration:Duration(milliseconds: 300),
                                                                          // content:Text("You are correct!"));
                                                                          // Scaffold.of(context).showSnackBar(snackBar);
                                                                          updateQuestion();

                                                                        }
                                                                        else if(userChoice == question.elementAt(index).isCorrect)
                                                                        {
                                                                          print("False");
                                                                          updateQuestion();
                                                                        }
                                                                         else
                                                                        {
                                                                          print("No proper choice");
                                                                          question.elementAt(index).isCorrect == null;
                                                                        }
                                                                      }
                                          
                                                                            updateQuestion()
                                                                                     {
                                                                                    setState(() {
                                                                                    index=(index+1)%question.length;          
                                                                                          });
                                                                                     }




                                              
                                            showGif()
                                            {
                                                if(question.elementAt(index).isCorrect == true)
                                                {
                                                  return correct();
                                                }
                                                else if(question.elementAt(index).isCorrect == false)
                                                {
                                                  return wrong();
                                                }
                                                else
                                                {
                                                  return tryLuck();
                                                }
                                            }
                                          
                                            correct()
                                             {
                                                    return Column(
                                                                children: <Widget>[
                                                                  Image(image: NetworkImage("https://media1.giphy.com/media/xUOxf0akiVBK6R8jGU/giphy.gif"),
                                                                  )
                                                                ],
                                                               );
                                            }

                                      wrong() 
                                      {
                                            return Column(
                                                                children: <Widget>[
                                                                  Image(image: NetworkImage("https://i.gifer.com/LVQC.gif"),
                                                                  )
                                                                ],
                                                               );
                                      }
                        
                          tryLuck() 
                          {
                                return Column(
                                                                children: <Widget>[
                                                                  Image(image: NetworkImage("https://www.playoctopus.com/wp-content/uploads/2019/03/octopus-tablet-gameroom-demo-compressor-1.gif"),
                                                                  )
                                                                ],
                                                               );
                          } 
}