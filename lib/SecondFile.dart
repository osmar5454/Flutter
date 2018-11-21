import 'package:flutter/material.dart';
import 'package:nicole_app3/Ciclo1.dart';
import 'package:nicole_app3/Ciclo10.dart';
import 'package:nicole_app3/Ciclo2.dart';
import 'package:nicole_app3/Ciclo3.dart';
import 'package:nicole_app3/Ciclo4.dart';
import 'package:nicole_app3/Ciclo5.dart';
import 'package:nicole_app3/Ciclo6.dart';
import 'package:nicole_app3/Ciclo7.dart';
import 'package:nicole_app3/Ciclo8.dart';
import 'package:nicole_app3/Ciclo9.dart';
import 'package:nicole_app3/Dialogs.dart';
import 'dart:ui';
import 'package:nicole_app3/main.dart';

class SecondPage extends StatefulWidget {


  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
            body:Stack(
              children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                        image:AssetImage('images/deadpool.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),

                  child: BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 3.0 ,sigmaY: 3.0),
                    child: new Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),

                Column(
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        SizedBox(height: 15.0,),

                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              color: Colors.cyan,

                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(width: 115.0,),

                            Text(
                                'Combina',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.amberAccent,
                                    fontSize: 23.0
                                )
                            ),

                            SizedBox(width: 90.0,),

                          ],
                        ),

                      ],
                    ),



                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 240.0, 0.0),
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                              'Paso 1',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30.0,
                                  color: Colors.white
                              )
                          ),
                        )
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          padding: EdgeInsets.fromLTRB(20.0, 10.0 , 0.0, 0.0),
                          margin: EdgeInsets.only(left: 20.0),
                          child: Text(
                              'Empieza revisando en los ciclos los diferentes cursos que desees.',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  color: Colors.white
                              )
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25.0,),
                    



                    Container(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0),
                        child: Stack(//sobreposicionamiento
                          overflow: Overflow.visible,
                          children: <Widget>[

                            Container(
                              height: 520.0,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  _foodCard('1','images/deadpool.jpg',Ciclo1()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('2','images/deadpool.jpg',Ciclo2()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('3','images/deadpool.jpg',Ciclo3()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('4','images/deadpool.jpg',Ciclo4()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('5','images/deadpool.jpg',Ciclo5()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('6','images/deadpool.jpg',Ciclo6()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('7','images/deadpool.jpg',Ciclo7()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('8','images/deadpool.jpg',Ciclo8()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('9','images/deadpool.jpg',Ciclo9()),
                                  SizedBox(width: 5.0,),
                                  _foodCard('10','images/deadpool.jpg',Ciclo10())
                                ],
                              ),
                            )
                          ],
                        )
                    ),

                    SizedBox(height: 15.0,),

                    Container(
                      height:  50.0,
                      width: 100.0,
                      child: Center(child : new Image.asset('gifs/kirby2.gif'),
                    ))

                  ],
                ),
              ],
            )

          );
  }

  Widget _foodCard(String nC ,String i , var _class){
    MINIDialogs otome = new MINIDialogs();

    String numberCicle = nC;
    String image = i;
    var subClass = _class;

    return  Stack(
      children: <Widget>[

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(55.0, 0.0, 15.0, 10.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    GestureDetector(
                      onTap:(){
                        debugPrint('El H fue presionado');
                        Navigator.push(context,MaterialPageRoute(builder: (context) => subClass));
                      },
                      onLongPress: (){
                        otome.information(context, 'Otome', Text('Otome es la besto waifu y Nanami tambien, pero las dos se agarran a vergazos en decidir cual es mejor'), '');},


                      //Esto son los cards de los ciclos
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        width: 300.0,
                        height: 500.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage(image),
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
                    ),

                    //Este es el cuadro de los datos del ciclo
                      Positioned(
                        top: 455.0,
                        left: 15.0,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Colors.pinkAccent
                          ),
                          width: 270.0,
                          height: 65.0,
                          padding: EdgeInsets.all(4.0),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Row(
                                children: <Widget>[
                                  Text(
                                    'Ciclo '+numberCicle , //CAMBIA
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(width: 4.0),
                                  Image.asset(
                                    'images/integral2.png',//CAMBIA
                                    height: 20.0,
                                    width: 20.0,
                                  ),
                                  SizedBox(width: 130.0),
                                  Text(
                                    numberCicle, //CAMBIA
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 20.0,
                                        color: Colors.white),
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
                                        color: Colors.white),
                                  )
                                ],
                              )

                            ],
                          ),
                        ),

                      ),
                  ],
                )),

          ],
        )
      ],
    );
  }//widget de las cartas de los ciclos
}



