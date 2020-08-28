import 'package:automacao/CadastroCasa.dart';
import 'package:automacao/CadastroUsuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'Animation/FadeAnimation.dart';


class HomeCad extends StatefulWidget {
  @override
  _HomeCadState createState() => _HomeCadState();
}

class _HomeCadState extends State<HomeCad> {

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
                        Icons.add_circle,
                        color: const Color(0xff33ff33),
                        size: 50,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Cadastro",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 80,
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
                                builder: (context) => CadastroUsuario()
                              )
                          );
                        },
                        child: myItems(Icons.person_add, "Adicionar Usuário", 0xff003300)
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CadastroCasa()
                              )
                          );
                        },
                        child: myItems(Icons.home, "Adicionar Casa", 0xff3d3d5c)
                    ),

                  ],
                  staggeredTiles: [
                    StaggeredTile.extent(2, 130.0),
                    StaggeredTile.extent(2, 130.0),
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

