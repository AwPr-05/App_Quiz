import 'package:flutter/material.dart';
import 'package:quiz_family/screens/questions_screen/question1.dart';

class TilePessoa extends StatelessWidget {
  final String name;
  final String asset;
  final int id;
  // final int opcaoEscolhida;

  // TODO recuperar nome da pessoa escolhida
  TilePessoa({@required this.name, @required this.asset, @required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Question1(name: name,),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.yellow.shade700,
                  spreadRadius: 4,
                  blurRadius: 5),
            ]),
        child: Row(
          children: [
            // Imagem
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(asset),
            ),

            // Espacamento
            SizedBox(width: 10),

            // Texto Nome
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
