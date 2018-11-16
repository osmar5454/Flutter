import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:nciole_app3/Dialogs.dart';

class Ciclo8 extends StatefulWidget {
  @override
  _Ciclo8State createState() => new _Ciclo8State();
}

class _Ciclo8State extends State<Ciclo8> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(


        body: new Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/ciclo8.jpg'),
                      fit: BoxFit.cover
                  )

              ),
              child:BackdropFilter(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.fromLTRB(18.0, 18.0, 0.0, 0.0),
                      child: Icon(Icons.verified_user,color: Colors.deepPurpleAccent ,size: 30.0,),
                    ),


                    SizedBox(width: 280.0,),

                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 5.0, 10.0,0.0),
                      margin: EdgeInsets.fromLTRB(0.0, 18.0, 10.0, 0.0),
                      child:  Icon(Icons.accessibility,color: Colors.deepPurpleAccent , size : 30.0),
                    )

                  ],
                ),

                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-1.0, 0.0),
                      margin: EdgeInsets.fromLTRB(15.0, 18.0, 10.0, 0.0),
                      child: Text(
                        'Paso 2',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(width: 160.0,),

                    Container(
                      alignment: Alignment(3.0, 0.0),
                      margin: EdgeInsets.fromLTRB(15.0, 18.0, 10.0, 0.0),
                      child: Text(
                        'Ciclo 8',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 23.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ),

                  ],
                ),


                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 18.0, 10.0, 0.0),
                  child: Text(
                    'Ahora elige los cursos que vas ha llevar en el ciclo. Cada curso funciona como boton.',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Center(child: Text(
                  'Cursos',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25.0,
                      color: Colors.cyanAccent,
                      fontWeight: FontWeight.w600
                  ),
                ),),

                SizedBox(height: 25.0,),


                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card('Lpoo'),
                        Card('Mate aplicada')
                      ],
                    )
                ),

                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card('Lpoo'),
                        Card('Mate aplicada')
                      ],
                    )
                ),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card('Lpoo'),
                        Card('Mate aplicada')
                      ],
                    )
                )



              ],
            ),
          ],
        )

    );
  }


  Widget Card(String _nombreCurso){
    String nombreCurso =_nombreCurso;

    Dialogs dialogs = new Dialogs();
    return  Stack(
      children: <Widget>[

        Column(
          children: <Widget>[
            Container(
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    GestureDetector(
                      onTap:(){
                        debugPrint('El H CURSO fue presionado');
                        dialogs.information(context, 'Secciones' ,'Este es el contenido');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 0.0 ,left: 5.0,bottom: 25.0),
                        width: 180.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage('images/ciclo8.jpg'),
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

                    Positioned(
                      top: 100.0,
                      left: 15.0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Colors.lightGreenAccent
                        ),
                        width: 160.0,
                        height: 50.0,
                        padding: EdgeInsets.all(4.0),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Center(
                              child: Text(
                                nombreCurso,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )







                  ],
                )),

          ],
        )
      ],
    );

  }


}
