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
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
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
    if(activeScreen == 'questions-screen') {
      screenWidget = QuestionsSceen();
    }
    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 112, 12, 133),
              Color.fromARGB(255, 94, 3, 114)
            ],
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
