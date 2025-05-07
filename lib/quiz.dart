import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);


    if(selectedAnswers.length == questions.length){
      setState(() {

        activeScreen = 'results-screen';

      });
    }
  }
  // Widget? activeScreen;

// @override
// void initState() {
//     activeScreen = HomeScreen(switchScreen);
//     super.initState();
//   }
//   void switchScreen(){
//     setState(() {
//       activeScreen = QuestionsSceen();
//     });
//   }
  @override
  Widget build(BuildContext context) {
    // final screenWidget =  activeScreen == 'start-screen'
    //         ? HomeScreen(switchScreen)
    //         : QuestionsSceen();
    Widget screenWidget = HomeScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onAnswerTap: (x) {
          chooseAnswer(x);
        },
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers, onRestart: restartQuiz
      );

    }
    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 111, 11, 129),
              Color.fromARGB(255, 94, 3, 114)
            ],
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
