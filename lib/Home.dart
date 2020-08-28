import 'package:automacao/Sensores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'Cadastro.dart';
import 'Controles.dart';


class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

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
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "ARautomação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            Expanded(
                child: StaggeredGridView.count(
                    crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  children: <Widget>[
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //builder: (context) => Game()
                              )
                          );
                        },
                        child: myItems(Icons.home, "Home", 0xffed622b)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeCad()
                              )
                          );
                        },
                        child: myItems(Icons.person_add, "Cadastro", 0xff26cb3c)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sensores()
                              )
                          );
                        },
                        child: myItems(Icons.widgets, "Sensores", 0xffff3266)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeControl()
                              )
                          );
                        },
                        child: myItems(Icons.airplay, "Controles", 0xff3399fe)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //builder: (context) => HomeControl()
                              )
                          );
                        },
                        child: myItems(Icons.trending_up, "Relatórios", 0xfff4c83f)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //builder: (context) => Game()
                              )
                          );
                        },
                        child: myItems(Icons.art_track, "Ajustes", 0xff622F74)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //builder: (context) => Game()
                              )
                          );
                        },
                        child: myItems(Icons.settings, "Configurações", 0xff7297ff)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //builder: (context) => Game()
                              )
                          );
                        },
                        child: myItems(Icons.directions_run, "Logout", 0xffad61f1)
                    ),
                  ],
                  staggeredTiles: [
                    StaggeredTile.extent(2, 130.0),
                    StaggeredTile.extent(1, 150.0),
                    StaggeredTile.extent(1, 150.0),
                    StaggeredTile.extent(1, 150.0),
                    StaggeredTile.extent(1, 150.0),
                    StaggeredTile.extent(1, 150.0),
                    StaggeredTile.extent(1, 150.0),
                    StaggeredTile.extent(2, 130.0),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
