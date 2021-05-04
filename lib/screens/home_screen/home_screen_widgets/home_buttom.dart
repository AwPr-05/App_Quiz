import 'package:flutter/material.dart';
import 'package:quiz_family/screens/person_screen/person_screen.dart';

class HomeButtom extends StatelessWidget {
  bool vaiJogar;

  HomeButtom({this.vaiJogar});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: vaiJogar,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PersonScreen(),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: Text(
            "Continuar...",
            style: TextStyle(
                color: Colors.yellow.shade700,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
