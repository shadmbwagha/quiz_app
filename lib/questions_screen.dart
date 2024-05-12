import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsSceen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsSceen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style:const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: currentQuestion.answers[0],
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText:currentQuestion.answers[2],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
