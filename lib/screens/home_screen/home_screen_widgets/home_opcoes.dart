// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class HomeOpcoes extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String text;
//     bool correct = false;
//     int id;

//     HomeOpcoes({this.text,this.correct,this.id});

//     return GestureDetector(
//       onTap: () {
//         if (opcaoEscolhida == null) {
//           setState(() {
//             opcaoEscolhida = id;
//           });
//           if (correct) {
//             // TODO fazer a logica das centas, printar algo na tela e mudar cor para verde
//             Fluttertoast.showToast(
//               msg: "ACERTOU!!",
//               backgroundColor: Colors.green,
//               toastLength: Toast.LENGTH_SHORT,
//               gravity: ToastGravity.SNACKBAR,
//               timeInSecForIosWeb: 1,
//               textColor: Colors.white,
//               fontSize: 18.0,
//             );
//             vaiJogar = true;
//             print("Você acertou!!");
//           } else {
//             // TODO fazer a logica das erradas, printar algo na tela
//             Fluttertoast.showToast(
//                 msg: "ERROU!! Lamento mas não podera jogar :(",
//                 backgroundColor: Colors.red,
//                 toastLength: Toast.LENGTH_SHORT,
//                 gravity: ToastGravity.SNACKBAR,
//                 timeInSecForIosWeb: 3,
//                 textColor: Colors.white,
//                 fontSize: 18.0);
//             print("Você acertou!!");
//           }
//         }
//       },
//       child: Container(
//         alignment: Alignment.center,
//         margin: EdgeInsets.all(7),
//         height: 100,
//         width: 115,
//         decoration: BoxDecoration(
//           color: correct && opcaoEscolhida == id
//               ? Colors.green
//               : !correct && opcaoEscolhida == id
//                   ? Colors.red
//                   : Colors.white,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
