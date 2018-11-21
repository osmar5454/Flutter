import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:nicole_app3/Dialogs.dart';
import 'package:nicole_app3/Modal.dart';




Widget _Card(String _nombreCurso, BuildContext context){

  Modal modal = new Modal();
  String nombreCurso =_nombreCurso;
  Dialogs dialogs = new Dialogs();
  Text data = new Text(
    '\n\n\bProfesor\nRomano Lopez\n\n'
        '\bDias\nL-M-V\n\n'
        '\bHorario\n9-12 am ',
    style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Raleway',
        fontSize: 20.0,
        color: Colors.black
    ),
  );

  var var2 = new CupertinoAlertDialog(
    title: Container(child: new Text('Datos de la seccion' ,style: TextStyle(fontFamily: 'Raleway',fontSize: 20.0 , color: Colors.redAccent),),),
      content: Container(
      height: 290.0,
      child: Column(
        children: <Widget>[
          data,
        ],
      ),
    ),
    actions: <Widget>[
      FlatButton(
          onPressed: (){debugPrint('Lo elegiste');},
          child: Container(
            child: Center(
              child: Text('Elegir' ,style: TextStyle(fontFamily: 'Raleway',fontSize: 20.0 , color: Colors.deepPurpleAccent,fontWeight: FontWeight.w600),),
            ),
        ))
    ],

  );


  mostrarDatos(){
    return showDialog(context: context, child: var2);
  }

  var alert = new CupertinoActionSheet(
    cancelButton: FlatButton(
      onPressed: (){},
      child: Text('Secciones', style:TextStyle(fontSize: 25.0 , fontWeight: FontWeight.w500 , fontFamily: 'Raleway', color: Colors.redAccent) ,),
    ),
    message: FlatButton(
        onPressed: (){debugPrint('Presionado');},
        child: Column(
          children: <Widget>[
           modal.crearSecciones(context,mostrarDatos  , 'Seccion X', 'Seccion Y', 'Seccion Z')



          ],
        ))
  );

  
  
  return  Stack(
    children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            width: 180.0,
              height: 140.0,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  GestureDetector(
                    onTap:(){
                      showCupertinoModalPopup(context: context, builder: (BuildContext context){
                        return alert;
                      });
                    },

                    child: Container(

                      margin: EdgeInsets.only(top: 0.0 ,left: 5.0,bottom: 25.0),
                      width: 180.0,
                      height: 140.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage('images/deadpool.jpg'),
                              fit: BoxFit.cover),
                          color: CupertinoColors.activeBlue,
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
                          color: Colors.black.withOpacity(0.8)
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
                                  color: Colors.white,
                                  fontSize: 20.0,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              )
          )

    ],
  );
}

Widget Cursos() {

    return  Center(
      child: Container(
        padding: EdgeInsets.only(left: 5.0,right: 5.0),
        width: 600.0,
        height: 514.0,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (BuildContext context , int index){
              return ListTile(
                onTap: (){},
                title: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[_Card('Lpoo', context),_Card('Lpoo', context),],
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );

}