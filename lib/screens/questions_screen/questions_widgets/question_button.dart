import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  final String text;
  final Function action;
  final Color color;
  QuestionButton({@required this.text, @required this.color,@required this.action});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 60,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 2),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto Nome
            Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
