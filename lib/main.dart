import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:nciole_app3/SecondFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:nciole_app3/ThirdPage.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String , WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new QuickView3()
    },
  ));
}


class SplashScreen extends StatefulWidget{
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{
  startTime() async {
    var duration = new Duration(seconds : 3);
    return new Timer(duration, navigationPage);
  }
   void navigationPage (){
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
   }
  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/gota.jpg'),
                  fit: BoxFit.cover,
                ),
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

            Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Stack(
                      alignment: Alignment.center,
                      children: <Widget>[

                        //BOTONES DE INICIO
                        new Container(
                            margin: new EdgeInsets.only(left: 0.0 , bottom : 150.0),
                            height: 60.0,
                            width:  60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.indigoAccent
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Icon(Icons.verified_user, size: 35.0,),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                              ),
                            )
                        ),//Boton computador

                        new Container(
                            margin: new EdgeInsets.only(left: 65.0 , top : 65.0),
                            height: 60.0,
                            width:  60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.greenAccent
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Icon(Icons.computer, size: 35.0,),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                              ),
                            )
                        ),//Boton computadora

                        new Container(
                            margin: new EdgeInsets.only(right: 65.0 , top : 65.0),
                            height: 60.0,
                            width:  60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.lime
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Image.asset('images/base de datos.png'),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                                iconSize:  30.0,
                              ),
                            )
                        ),//Boton base de datos

                        new Container(
                            margin: new EdgeInsets.only(right: 65.0 ,bottom: 65.0),
                            height: 60.0,
                            width:  60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.cyan
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Icon(Icons.public ,size: 35.0,),
                                onPressed: (){debugPrint('Inteligencia artificial fue tocado');},
                                splashColor: Colors.black,
                                highlightColor: Colors.greenAccent[200],
                                iconSize: 70.0,
                              ),
                            )
                        ),//Boton mundo

                        new Container(
                            margin: new EdgeInsets.only(bottom: 65.0 ,left: 65.0),
                            height: 60.0,
                            width:  60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.deepPurple[300]
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Icon(Icons.wb_cloudy ,size: 35.0,),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                              ),
                            )
                        ),//Boton cloud

                        new Container(
                            margin: new EdgeInsets.only(right: 140.0, top : 0.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.purpleAccent[100]
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Icon(Icons.supervisor_account, size: 35.0,),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                              ),
                            )
                        ),//Boton personitas

                        new Container(
                            margin: new EdgeInsets.only(left: 240.0, top : 0.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.deepOrange[300]
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Icon(Icons.timer_3, size: 35.0,),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                              ),
                            )
                        ),//Boton 3 segundos

                        new Container(
                            margin: new EdgeInsets.only(left: 140.0, top : 0.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.orangeAccent[100]
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Icon(Icons.trending_up, size: 35.0,),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                              ),
                            )
                        ),//Boton linea curva

                        new Container(
                            margin: new EdgeInsets.only(right: 1.0 , top : 0.0),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(40.0),
                                color:Colors.pink
                            ),
                            child: new Tab(
                              icon: IconButton(
                                icon: new Image.asset('images/integral2.png'),
                                onPressed: (){debugPrint('Integral fue tocado');},
                                splashColor: Colors.pink[500],
                                highlightColor: Colors.greenAccent[200],
                              ),
                            )
                        ),//Boton integral



                      ],
                    ),//BOTONES DE INICIO,

                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: new Tab(
                                icon: CupertinoButton(
                                  child: new Text(
                                    'Start',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w800
                                    ),
                                  ),
                                  onPressed: (){
                                    debugPrint('comenzaste');

                                  },
                                  disabledColor: Colors.indigoAccent,
                                  pressedOpacity: 0.1,
                                )
                            )
                        )
                      ],
                    ),//Boton de comenzar
                  ],
                )
            )

          ],
        )
    );
  }


}




