import 'package:flutter/material.dart';
import 'package:nciole_app3/SecondFile.dart';
import 'dart:async';
import 'package:nciole_app3/main.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';


class QuickView3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(),
      routes: <String , WidgetBuilder>{
        '/FirstPage' : (BuildContext context) => new HomePage(),
        '/SecondPage' : (BuildContext context) => new SecondPage(),

      },
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[



          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('images/pantalla2.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 3.0 ,sigmaY:3.0 ),
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),

          new ListView(
            shrinkWrap: true,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  //Primero
                  Container(
                    alignment: Alignment(0.0, 5.0),
                    height: 100.0,
                    color: Colors.transparent,
                    child: Text(
                      'CHOOSE',
                      style: TextStyle(fontFamily: 'Raleway' , fontSize: 30.0 ,color: Colors.white,fontWeight: FontWeight.w800),
                    )
                  ),
                  //Primero

                  Container(
                    margin: EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                    alignment: Alignment(-1.0, 0.0),
                    child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white), onPressed: (){
                      Navigator.of(context).pushNamed('/FirstPage');
                    }),
                  ),


                  //Boton de ALEATORIO
                  new GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed('/SecondPage');
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(25.0, 290.0, 25.0, 0.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 12.0,
                                color: Colors.grey
                            )
                          ]
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.fromLTRB(25.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  'ALEATORIO',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.fromLTRB(315.0, 2.0, 5.0, 5.0),
                                child: Icon(Icons.offline_bolt , color : Colors.black),
                              ),

                              Container(
                                padding: EdgeInsets.fromLTRB(25.0, 35.0, 5.0, 5.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Escoge los cursos que deseees',
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.fromLTRB(25.0, 50.0, 5.0, 5.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'sin necesidad de escoger las secciones.',
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0
                                      ),
                                    ),
                                  ],
                                ),
                              )



                            ],
                          )
                        ],
                      ),
                    ),
                    //Boton de ALEATORIO,
                  ),


                  new GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed('/SecondPage');
                    },
                    child: //Boton de CHOOSE
                    Container(
                      margin: EdgeInsets.fromLTRB(25.0, 390.0, 25.0, 0.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 12.0,
                                color: Colors.grey
                            )
                          ]
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.fromLTRB(25.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  'ELIGE',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.fromLTRB(315.0, 2.0, 5.0, 5.0),
                                child: Icon(Icons.mode_edit , color : Colors.black),
                              ),

                              Container(
                                padding: EdgeInsets.fromLTRB(25.0, 35.0, 5.0, 5.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Escoge los cursos que desees',
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.fromLTRB(25.0, 50.0, 5.0, 5.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'incluyendo las secciones de los cursos.',
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0
                                      ),
                                    ),
                                  ],
                                ),
                              )



                            ],
                          )
                        ],
                      ),
                    ),
                  )


                ],
              )
            ],
          )
        ],
      )
    );
  }
}