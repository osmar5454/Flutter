import 'package:flutter/material.dart';
import 'dart:ui';


class SecondPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {

  bool _isFavorito = true;
  bool _alredy = true ;

  void _toggleFavorite(bool _isfavorito , color){
    setState((){
      if(_isFavorito){
        _isFavorito =false;
        _alredy = false ;
      }
      else{
        _isFavorito=true;
        _alredy = true;
      }
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
            body:Stack(
              children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                        image:AssetImage('images/ciclo7.jpg'),
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
                              color: Colors.deepPurpleAccent,
                              onPressed: () {
                                Navigator.of(context).pushNamed('/ThirdPage');
                              },
                            ),
                            SizedBox(width: 115.0,),

                            Text(
                                'COMBINA',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.deepPurpleAccent,
                                    fontSize: 20.0
                                )
                            ),

                            SizedBox(width: 90.0,),

                            IconButton(
                              icon: Icon(
                                _isFavorito ? Icons.favorite_border : Icons.favorite,
                                color: _alredy ? Colors.deepPurpleAccent : Colors.redAccent,
                                textDirection: TextDirection.ltr,
                                size: 40.0,
                              ),

                              onPressed: (){
                                _toggleFavorite(_isFavorito , _alredy);

                              },
                            )
                          ],
                        ),

                      ],
                    ),



                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 240.0, 0.0),
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                              'Paso 1',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w800,
                                  fontSize: 34.0,
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
                          padding: EdgeInsets.fromLTRB(15.0, 20.0 , 0.0, 0.0),
                          margin: EdgeInsets.only(left: 20.0),
                          child: Text(
                              'Empieza revisando en los ciclos los diferentes cursos que desees.',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18.0,
                                  color: Colors.white
                              )
                          ),
                        )
                      ],
                    ),


                    Container(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 40.0),
                        child: Stack(//sobreposicionamiento
                          overflow: Overflow.visible,
                          children: <Widget>[

                            Container(
                              height: 543.0,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  _foodCard('1','images/ciclo1.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('2','images/ciclo2.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('3','images/ciclo3.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('4','images/ciclo4.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('5','images/ciclo5.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('6','images/ciclo6.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('7','images/ciclo7.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('8','images/ciclo8.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('9','images/ciclo9.jpg'),
                                  SizedBox(width: 5.0,),
                                  _foodCard('10','images/ciclo10.jpg')
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ],
            )

          );
  }

  Widget _foodCard(String nC ,String i){

    String numberCicle = nC;
    String image = i;

    return  Stack(
      children: <Widget>[


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(55.0, 30.0, 15.0, 40.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(top: 70.0),
                      width: 300.0,
                      height: 400.0,
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

                    Positioned(
                      top: 425.0,
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

                    )
                  ],
                )),

          ],
        )
      ],
    );
  }//widget de las cartas de los ciclos


}
