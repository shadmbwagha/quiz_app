import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = HomeScreen();

  void switchScreen(){
    setState(() {
      activeScreen = QuestionsSceen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 138, 20, 197),
              Color.fromARGB(255, 94, 3, 114)
            ],
          ),
        ),
        child: activeScreen,
      ),
    );
  }
}
