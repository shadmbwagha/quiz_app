import 'package:flutter/material.dart';

class QuestionsSceen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsSceen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("hi there")
            ],
          ),
        );
  }
}
