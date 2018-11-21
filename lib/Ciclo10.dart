import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nicole_app3/Cursos.dart';
import 'dart:ui';

import 'package:nicole_app3/Dialogs.dart';

class Ciclo10 extends StatefulWidget {
  @override
  _Ciclo10State createState() => new _Ciclo10State();
}

class _Ciclo10State extends State<Ciclo10> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/deadpool.jpg'),
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
                      margin: EdgeInsets.only(top: 10.0 ,left: 3.0),
                      child:IconButton(icon: Icon(Icons.keyboard_backspace , color: Colors.amberAccent,size: 25.0,), onPressed: (){
                        Navigator.pop(context);
                      }),
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
                        'Ciclo 10',
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
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.w600
                  ),
                ),),


                SizedBox(height: 5.0,),

                Cursos(),

                SizedBox(height: 10.0,),
                Center(
                  child: FloatingActionButton(
                    onPressed: (){
                      showDialog(
                          context:context,
                          barrierDismissible: true,
                          builder: (BuildContext context){
                            return CupertinoAlertDialog(
                              title: Container(child: new Text('Aqui van todos los cursos seleccionados' ,style: TextStyle(fontFamily: 'Raleway',fontSize: 20.0 , color: Colors.redAccent ,fontWeight: FontWeight.w500),),),
                            );
                          }
                      );
                    },
                    child: IconButton(icon: Icon(Icons.all_inclusive ,color: Colors.white, size : 30.0),onPressed: null,),
                    backgroundColor: Colors.black,
                    tooltip: 'Nicosmar is real',
                  ),
                ),




              ],
            ),
          ],
        )

    );
  }


}


