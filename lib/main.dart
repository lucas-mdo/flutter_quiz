import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Quiz());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/5.png',
            width: 300,
          ),
          const SizedBox(height: 40),
          const Text(
            'Descubra sua linguagem do amor!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 60),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 245, 228, 188),
              backgroundColor: const Color.fromARGB(255, 33, 190, 128),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Iniciar Quiz'),
          ),
        ],
      ),
    );
  }
}
