import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';
import 'Home.dart';

class AreaExterna extends StatefulWidget {
  @override
  _AreaExternaState createState() => _AreaExternaState();
}

class _AreaExternaState extends State<AreaExterna> {

  //Mudar cor botao

  bool portaoButtonStatus = false;

  bool sacadaButtonStatus = false;

  bool quintalButtonStatus = false;

  bool garagemButtonStatus = false;

  bool varandaButtonStatus = false;

  bool piscinaButtonStatus = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
            ])),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Icon(
                        Icons.image,
                        color: const Color(0xffffffff),
                        size: 50,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Área Externa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 65,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Inicio()
                                )
                            );
                          },
                          child: Icon(
                            Icons.home,
                            size: 40,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              portaoButtonStatus = !portaoButtonStatus;
                            });
                          },
                          color: portaoButtonStatus ? Color(0xffb3ff66) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.directions_car,
                            size: 65,
                          ),
                          label: Text(
                            "Portão",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              sacadaButtonStatus = !sacadaButtonStatus;
                            });
                          },
                          color: sacadaButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Sacada",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              quintalButtonStatus = !quintalButtonStatus;
                            });
                          },
                          color: quintalButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Quintal",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              garagemButtonStatus = !garagemButtonStatus;
                            });
                          },
                          color: garagemButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Garagem",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              varandaButtonStatus = !varandaButtonStatus;
                            });
                          },
                          color: varandaButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Varanda",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              piscinaButtonStatus = !piscinaButtonStatus;
                            });
                          },
                          color: piscinaButtonStatus ? Color(0xff66a3ff) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.pool,
                            size: 65,
                          ),
                          label: Text(
                            "Piscina",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          )
                      ),
                    ),
                  ],
                )
            )

          ],
        ),



      ),
    );
  }
}
