
import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {


  @override
  Widget build(BuildContext context) {

          return Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.white,
              elevation: 0.2 ,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pushNamed('/ThirdPage');
                },
              ),

              title: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                        'Combina ya !!!',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent
                        )
                    ),
                  )
                ],
              ),

              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 18.0),
                ),
                Icon(Icons.favorite , color: Colors.black ,textDirection: TextDirection.ltr,),
                SizedBox(width: 20.0),
              ],

            ),


            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(58.0, 40.0, 20.0, 40.0),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[

                        Container(
                          width: 300.0,
                          height: 400.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage('images/maths.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  color: Colors.black12,
                                  spreadRadius: 2.0
                                )
                              ]
                          ),
                        ),
                        
                        Positioned(

                          top: 320.0,
                          left: 15.0,
                          child: Container(

                            width: 270.0,
                            height: 90.0,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 12.0,
                                      color: Colors.black12,
                                      spreadRadius: 2.0)
                                ]),

                            child: Container(
                              padding: EdgeInsets.all(7.0),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[

                                      Text(
                                        'Ciclo 1',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 20.0),
                                      ),

                                      SizedBox(width: 4.0),

                                      Image.asset(

                                        'images/integral2.png',
                                        height: 20.0,
                                        width: 20.0,
                                      ),

                                      SizedBox(width: 110.0),

                                      Text(

                                        '1',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 20.0,
                                            color: Colors.grey),
                                      ),

                                    ],
                                  ),

                                  SizedBox(height: 9.0),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Elige tu curso',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 15.0,
                                            color: Colors.grey),
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),

              ],
            ),
          );
        }
}
