import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(


        children: <Widget>[

          Column(
            children: <Widget>[
              Image.asset('assets/images/tech.jpg'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(10),
                 color: Colors.white,
                child:Padding(
                  padding: const EdgeInsets.only(left:75.0,right: 75.0,top:20,bottom:20),
                  child: Text("IOT Componenets",
                  style:TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ) ,),
                )
              ),
            ),
          ),

              Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Container(
                margin: EdgeInsets.only(left:10,right: 10),
                 color: Colors.purple.shade200,
                child:Padding(
                  padding: const EdgeInsets.only(left:50.0,right: 50.0,top:40,bottom: 40),
                  child: Row(
                    children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.battery_full,
                              size: 60,color: Colors.purple.shade900,)
                            ],
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left:30.0),
                            child: Column(
                            children: <Widget>[
                              Icon(Icons.wifi,
                              size: 60,color: Colors.purple.shade900,)
                            ],
                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:30.0),
                            child: Column(
                            children: <Widget>[
                              Icon(Icons.cloud,
                              size: 60,color: Colors.purple.shade900,)
                            ],
                        ),
                          )
                    ],
                  ),
                 
                ),

                
              ),
            ),
          ),


              Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Container(
                margin: EdgeInsets.only(right:10,left:10,bottom: 10),
                 color: Colors.purple.shade200,
                child:Padding(
                  padding: const EdgeInsets.only(left:50.0,right: 50.0,bottom:20),
                  child: Row(
                    children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.home,
                              size: 60,color: Colors.purple.shade900,)
                            ],
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left:30.0),
                            child: Column(
                            children: <Widget>[
                              Icon(Icons.mobile_screen_share,
                              size: 60,color: Colors.purple.shade900,)
                            ],
                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:30.0),
                            child: Column(
                            children: <Widget>[
                              Icon(Icons.location_city,
                              size: 80,color: Colors.purple.shade900,)
                            ],
                        ),
                          )
                    ],
                  ),
                 
                ),

                
              ),
            ),
          ),

        ]
       
    );
  }
}