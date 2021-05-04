import 'package:flutter/material.dart';
import 'package:quiz_family/screens/home_screen/home_screen.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz Family",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}
