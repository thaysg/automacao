import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';
import 'Home.dart';

class PrimeiroAndar extends StatefulWidget {
  @override
  _PrimeiroAndarState createState() => _PrimeiroAndarState();
}

class _PrimeiroAndarState extends State<PrimeiroAndar> {


  Material myItems(IconData icon, String heading, int color){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      heading,
                      style: TextStyle(
                          color: new Color(color),
                          fontSize: 20
                      ),
                    ),
                  ),

                  //Icon
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }

//Mudar cor botao

  bool salaButtonStatus = false;

  bool cozinhaButtonStatus = false;

  bool banheiroButtonStatus = false;


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
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
                        Icons.filter_1,
                        color: const Color(0xffffffff),
                        size: 50,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Primeiro Andar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 38,),
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
                              salaButtonStatus = !salaButtonStatus;
                            });
                          },
                          color: salaButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                              Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                              "Sala",
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
                              cozinhaButtonStatus = !cozinhaButtonStatus;
                            });
                          },
                          color: cozinhaButtonStatus ? Color(0xffffc34d) : Color(0xffc2c2a3),
                          icon: Icon(
                            Icons.lightbulb_outline,
                            size: 65,
                          ),
                          label: Text(
                              "Cozinha",
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
