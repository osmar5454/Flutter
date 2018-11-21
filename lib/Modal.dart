import 'package:flutter/material.dart';
import 'package:nicole_app3/Dialogs.dart';

class Modal{


  crearSecciones(BuildContext context , Function action ,String seccion1 ,String seccion2 ,String seccion3 ){
          return Container(

            width:600.0,
            height: 210.0,

            child: Center(
              child: Column(
                children: <Widget>[
                Container(margin:EdgeInsets.only(left: 50.0),child: _createTile(context,seccion1 , Icons.all_inclusive, action ),),
                Divider(color: Colors.blueGrey,),
                Container(margin:EdgeInsets.only(left: 50.0),child: _createTile(context, seccion2, Icons.all_inclusive, action),),
                Divider(color: Colors.blueGrey,),
                Container(margin:EdgeInsets.only(left: 50.0),child: _createTile(context, seccion3, Icons.all_inclusive,action ),),
            ],
              ),
            ),
          );

  }
  ListTile _createTile(BuildContext context , String name, IconData icon, Function action){
    return ListTile(
      leading: Icon(icon,color: Colors.black,),
      title: Text(name , style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.w400 , fontFamily: 'Raleway' , color: Colors.black),),
      onTap: (){

        action();
      },
    );
  }

}