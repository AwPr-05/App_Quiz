import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_family/screens/questions_screen/question3.dart';
import 'package:quiz_family/screens/questions_screen/questions_widgets/question_button.dart';

// ignore: must_be_immutable
class Question2 extends StatefulWidget {
  String name;
  int correctAnswer = 3;
  int selectedAnswer;

  Question2({this.name});

  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      body: Container(
        margin: EdgeInsets.fromLTRB(25, 50, 20, 25),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "${widget.name}, Quando fomos para Jericoacoara?",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(
              height: 100,
            ),

            Icon(
              FontAwesomeIcons.airbnb,
              size: 60,
            ),

            SizedBox(
              height: 100,
            ),
            //  Opçōes
            QuestionButton(
                text: "Novembro/2018",
                color: colorButtom(0),
                action: () {
                  winOrLose(false);
                  setState(() {
                    widget.selectedAnswer = 0;
                  });
                  nextScreen();
                }),
            QuestionButton(
                text: "Fevereiro/2018",
                color: colorButtom(1),
                action: () {
                  winOrLose(false);
                  setState(() {
                    widget.selectedAnswer = 1;
                  });
                  nextScreen();
                }),
            QuestionButton(
                text: "Dezembro/2018",
                color: colorButtom(2),
                action: () {
                  winOrLose(false);
                  setState(() {
                    widget.selectedAnswer = 2;
                  });

                  nextScreen();
                }),
            QuestionButton(
                text: "Julho/2018",
                color: colorButtom(3),
                action: () {
                  winOrLose(true);
                  setState(() {
                    widget.selectedAnswer = 3;
                  });
                  nextScreen();
                }),
          ],
        ),
      ),
    );
  }

  Future<void> nextScreen() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Question3(name: widget.name,)));
  }

  Color colorButtom(int number) {
    if (widget.selectedAnswer != null) {
      if (widget.selectedAnswer == widget.correctAnswer &&
          widget.correctAnswer == number) {
        return Colors.green;
      } else if (widget.selectedAnswer != widget.correctAnswer &&
          widget.selectedAnswer == number) {
        return Colors.red;
      } else if (number == widget.correctAnswer) {
        return Colors.green;
      } else {
        return Colors.white;
      }
    } else {
      return Colors.white;
    }
  }

  winOrLose(bool correct) {
      Fluttertoast.showToast(
        msg: correct? "ACERTOU!!": "ERROU!!",
        backgroundColor: correct? Colors.green : Colors.red,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 18.0,
      );
  }
  
}