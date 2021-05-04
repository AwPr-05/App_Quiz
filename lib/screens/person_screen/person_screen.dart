import 'package:flutter/material.dart';
import 'package:quiz_family/screens/person_screen/person_screen_widgets/person_tile.dart';

class PersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.fromLTRB(25, 50, 20, 25),
        child: ListView(
          children: [
            // Texto Jogar
            Text(
              "Vamos Jogar!!",
              style: TextStyle(color: Colors.yellow.shade700, fontSize: 25),
              textAlign: TextAlign.center,
            ),

            // Espacamento
            SizedBox(
              height: 20,
            ),

            // Texto Pergunta
            Text(
              "Qual jogador é você?",
              style: TextStyle(
                  color: Colors.yellow.shade700,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            // Espacamento
            SizedBox(
              height: 20,
            ),

            // Tile Pessoa
            TilePessoa(
              name: "Tia Nessa",
              asset: "assets/IMG_wanessa.jpg",
              id: 1,
            ),
            TilePessoa(
              name: "Fernanda",
              asset: "assets/IMG_fernanda.jpg",
              id: 2,
            ),
            TilePessoa(
              name: "Vó Vania",
              asset: "assets/IMG_gelvania.jpg",
              id: 3,
            ),
            TilePessoa(
              name: "Giovana",
              asset: "assets/IMG_giovana.jpg",
              id: 4,
            ),
            TilePessoa(
              name: "Luisa",
              asset: "assets/IMG_luisa.jpg",
              id: 5,
            ),
            TilePessoa(
              name: "Theus",
              asset: "assets/IMG_theus.jpg",
              id: 6,
            ),
            TilePessoa(
              name: "Pedro",
              asset: "assets/IMG_pedro.jpg",
              id: 7,
            ),
          ],
        ),
      ),
    );
  }
}
