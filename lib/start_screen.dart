import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  startScreen() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const Opacity(
          //   opacity: 0.6,
          //   child: Image(
          //     image: AssetImage("assets/images/quiz-logo.png"),
          //     height: 300,
          //   ),
          // ),
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            height: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
