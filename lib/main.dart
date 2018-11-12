import 'package:flutter/material.dart';
import 'dart:async';
import 'package:nciole_app3/SecondFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:nciole_app3/ThirdPage.dart';



void main(){
  runApp(QuickView());

}

class QuickView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      home: HomePage(),
      routes: <String , WidgetBuilder>{
        '/SecondPage' : (BuildContext context) => new SecondPage(),
        '/FirstPage' : (BuildContext context) => new HomePage(),
        '/ThirdPage' : (BuildContext context) => new ThirdPage()
      },
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white , Colors.black],
                begin: new FractionalOffset(0.0, 0.5),
                end: new FractionalOffset(0.5, 0.0),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
              )
            ),
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
                                      color: Colors.black,
                                      fontFamily: 'Raleway',
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                                onPressed: (){
                                  debugPrint('comenzaste');
                                  Navigator.of(context).pushNamed('/ThirdPage');
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
    );
  }
}



