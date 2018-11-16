import 'package:flutter/material.dart';


class Dialog extends StatefulWidget{
  @override
  _DialogsState createState() => new _DialogsState();
}
class _DialogsState extends State<Dialog>{

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
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(

      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[


            new Card(
              child: new Container(
                height: 50.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text(' Seccion X ',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0
                  ),),
                    new IconButton(icon: new Icon(Icons.accessibility,color: Colors.redAccent,), onPressed: () {
                      mini.information(context, 'Seccion X', data , 'Seccion X');
                    },)
                  ],
                ),
              ),
            ),
            new Card(
              child: new Container(
                height: 50.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text(' Seccion Y ',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0
                      ),),
                    new IconButton(icon: new Icon(Icons.accessibility,color: Colors.redAccent,), onPressed: () {
                      mini.information(context, 'Seccion Y', data , 'Seccion Y');
                    },)
                  ],
                ),
              ),
            ),
            new Card(
              child: new Container(
                height: 50.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text(' Seccion W ',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0
                      ),),
                    new IconButton(icon: new Icon(Icons.accessibility,color: Colors.redAccent,), onPressed: () {
                      mini.information(context, 'Seccion W', data, 'Seccion W' );
                    },)
                  ],
                ),
              ),
            ),
//------------------------------------------------------------------------------------------------------------



          ],
        ),
      ),
    );

  }
}




class MINIDialogs{

  void showInSnackBar(String value,String seccion ) {
    if(value.isEmpty) return;
    scaffoldState.currentState.showSnackBar(new SnackBar(
      content: new Text('Has añadido a ${seccion}'),
    ));
  }
  final GlobalKey<ScaffoldState> scaffoldState = new GlobalKey();



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
            content:
            Container(
              height: 85.0,
              width: 85.0,
              child: content ,
            ),

            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    showInSnackBar('', seccion);
                    Navigator.pop(context);


                  },
                  child: Icon(Icons.favorite ,color: Colors.deepPurpleAccent,)
              ),
            ],
          );
        }
    );
  }
}



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
}