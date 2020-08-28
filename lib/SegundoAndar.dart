import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';
import 'Home.dart';

class SegundoAndar extends StatefulWidget {
  @override
  _SegundoAndarState createState() => _SegundoAndarState();
}

class _SegundoAndarState extends State<SegundoAndar> {

  //Mudar cor botao

  bool hallButtonStatus = false;

  bool quartoButtonStatus = false;

  bool suiteButtonStatus = false;

  bool banheiroButtonStatus = false;

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
                        Icons.filter_2,
                        color: const Color(0xffffffff),
                        size: 50,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Segundo Andar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 35,),
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
                              hallButtonStatus = !hallButtonStatus;
                            });
                          },
                          color: hallButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Hall",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              quartoButtonStatus = !quartoButtonStatus;
                            });
                          },
                          color: quartoButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Quarto",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              suiteButtonStatus = !suiteButtonStatus;
                            });
                          },
                          color: suiteButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Suíte",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton.icon(
                          onPressed: (){
                            setState(() {
                              banheiroButtonStatus = !banheiroButtonStatus;
                            });
                          },
                          color: banheiroButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                            "Banheiro",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
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
