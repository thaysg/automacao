import 'package:automacao/main.dart';
import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';
import 'Home.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuarioState createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1,
                    Row(
                      children: <Widget>[
                        Text(
                          "Perfil",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 185,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Inicio()));
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(180),
                          child: Image.asset(
                            "images/wolve.jpg",
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.5,
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 40,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: Center(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Dados do Usuário",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: "Nome",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20),
                                              border: InputBorder.none),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: "Sobrenome",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20),
                                              border: InputBorder.none),
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "Telefone",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20),
                                              border: InputBorder.none),
                                        ),
                                        Text(
                                          "Endereço",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: "Endereço",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20),
                                              border: InputBorder.none),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: "Bairro",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20),
                                              border: InputBorder.none),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: "Cidade",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20),
                                              border: InputBorder.none),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      FadeAnimation(
                        1.7,
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  //  builder: (context) => Inicio(),
                                  ));
                            },
                            color: Colors.orange[900],
                            child: Center(
                              child: Text(
                                "Salvar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
