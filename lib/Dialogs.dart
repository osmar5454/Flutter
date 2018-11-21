import 'package:flutter/material.dart';


class Dialog extends StatefulWidget{
  @override
  _DialogsState createState() => new _DialogsState();
}
class _DialogsState extends State<Dialog>{

  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

    //VARIABLES DE LOS WIDGETS
  MINIDialogs mini = new MINIDialogs();
  Text data = new Text(
    '\n\nProfesor     Romano Lopez\n'
        'Dias             L-M-V\n'
        'Horario       9-12 am ',
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: 'Raleway',
      fontSize: 16.0,
      color: Colors.black
    ),
  );//CONTENIDO
  Cartas cartas = new Cartas();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      key: key,
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[

            cartas.Construir(context, data ,'X'),
            cartas.Construir(context, data ,'Y'),
            cartas.Construir(context, data ,'W'),



//------------------------------------------------------------------------------------------------------------



          ],
        ),
      ),
    );

  }
}




class MINIDialogs{
  information(BuildContext context ,String title ,Text content , String seccion){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder:(BuildContext context){
          return AlertDialog(
            title: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0
              ),
            ),
            content: Container(
              height: 85.0,
              width: 85.0,
              child: content ,
            ),

            actions: <Widget>[
              FlatButton(
                  onPressed: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.favorite ,color: Colors.black,),
                    ],
                  )
              ),
            ],
          );
        }
    );
  }
}
//DETALLES DE LAS SECCIONES

class Dialogs{

  Dialog secciones = new Dialog();

  information(BuildContext context ,String title , String content ){
    return showDialog(
        context: context,
      barrierDismissible: true,
      builder:(BuildContext context){
          return AlertDialog(

            title: Text(
              title,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w800,
                fontSize: 20.0
              ),
            ),


            content:
                Container(
                  height: 180.0,
                  width: 300.0,
                  child: secciones,
                  ),

            actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                      'Ok',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      color: Colors.redAccent
                    ),

                  )
                ),
            ],
          );
      }
    );
  }
}//DETALLES DE CADA SECCION

class Cartas{

  MINIDialogs mini = new MINIDialogs();

  Construir(BuildContext context , Text data ,String seccion ){
    return new Card(
      child: new Container(
        height: 50.0,
        child: new Row(
          children: <Widget>[


            GestureDetector(
              onTap: (){
                mini.information(context, 'Seccion ${seccion}', data , 'Seccion ${seccion}');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(' Seccion ${seccion}',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0
                    ),),
                  SizedBox(
                    width: 108.0,
                  ),
                  new IconButton(icon: new Icon(Icons.accessibility,color: Colors.redAccent,), onPressed: null,)
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }

}//TODAS LAS SECCIONES