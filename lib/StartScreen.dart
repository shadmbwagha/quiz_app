
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
           gradient: LinearGradient(colors: [
                Color.fromARGB(255, 138, 20, 197), 
                Color.fromARGB(255, 94, 3, 114)
              ])
        ),
        child: const Center(
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image: AssetImage("assets/images/quiz-logo.png"))
            ],
          ),
        ),
      ),
    );
  }
}