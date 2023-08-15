import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';

void main() {
  runApp(const Quiz());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.purpleAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 400,
                color: const Color.fromARGB(150, 255, 255, 255),
              ),
              const SizedBox(height: 40),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 60),
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
