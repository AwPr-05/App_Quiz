import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Opçoes primeira tela
  Widget criacaoOpcoes({@required text, bool correct}) {
    return GestureDetector(
      onTap: (){
        if(correct == true){
          setState(() {
            
          // TODO fazer a logica das centas, printar algo na tela e mudar cor para verde
          });
        }else{
          // TODO fazer a logica das erradas, printar algo na tela
        }
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        height: 100,
        width: 115,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            // Bola com icone
            Container(
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              height: 150,
              width: 150,
              child: Icon(
                FontAwesomeIcons.trophy,
                size: 70,
                color: Colors.yellow,
              ), 
            ),

            // Espaçamento
            SizedBox(
              height: 20,
            ),
            // Textos Welcome
            Column(
              children: [
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Streets Quizz",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            // Espaçamento
            SizedBox(
              height: 20,
            ),

            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 3,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  height: 300,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Antes de começarmos, Quanto é 2 + 2 ?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  child: criacaoOpcoes(text: "4"),
                ),
                Positioned(
                  top: 50,
                  left: 135,
                  child: criacaoOpcoes(text: "5"),
                ),
                Positioned(
                  top: 165,
                  left: 135,
                  child: criacaoOpcoes(text: "10"),
                ),
                Positioned(
                  top: 165,
                  child: criacaoOpcoes(text: "0"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
