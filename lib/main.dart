import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
        ),
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
  
}

