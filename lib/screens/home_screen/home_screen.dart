import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_family/screens/home_screen/home_screen_widgets/home_buttom.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int opcaoEscolhida;
  bool vaiJogar = false;

  /// Opçoes primeira tela
  Widget criacaoOpcoes(
      {@required text, bool correct = false, @required int id}) {
    return GestureDetector(
      onTap: () {
        if (opcaoEscolhida == null) {
          setState(() {
            opcaoEscolhida = id;
          });
          if (correct) {
            // TODO fazer a logica das centas, printar algo na tela e mudar cor para verde
            Fluttertoast.showToast(
              msg: "ACERTOU!!",
              backgroundColor: Colors.green,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 1,
              textColor: Colors.white,
              fontSize: 18.0,
            );
            vaiJogar = true;
          } else {
            // TODO fazer a logica das erradas, printar algo na tela
            Fluttertoast.showToast(
                msg: "ERROU!! Lamento mas não podera jogar :(",
                backgroundColor: Colors.red,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.SNACKBAR,
                timeInSecForIosWeb: 3,
                textColor: Colors.white,
                fontSize: 18.0);
          }
        }
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(7),
        height: 100,
        width: 115,
        decoration: BoxDecoration(
          color: correct && opcaoEscolhida == id
              ? Colors.green
              : !correct && opcaoEscolhida == id
                  ? Colors.red
                  : Colors.white,
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
        child: Column(
          children: [
            // Bola com icone
            Container(
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              height: 150,
              width: 150,
              child: Icon(
                FontAwesomeIcons.trophy,
                size: 70,
                color: Colors.yellow.shade700,
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

            // Quadrado pergunta
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.black,
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
                          color: Colors.yellow.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              criacaoOpcoes(
                                text: "4",
                                correct: true,
                                id: 1,
                              ),
                              criacaoOpcoes(
                                text: "5",
                                id: 2,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              criacaoOpcoes(
                                text: "10",
                                id: 3,
                              ),
                              criacaoOpcoes(
                                text: "2",
                                id: 4,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            // Botao
            HomeButtom(vaiJogar: vaiJogar),

            
          ],
        ),
      ),
    );
  }
}
