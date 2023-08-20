import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSelectedAnswer, {super.key});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Considero mais importante quando:",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            AnswerButton(
              answers[currentQuestionIndex].answer,
              () {
                answerQuestion(answers[currentQuestionIndex].answer);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              answers[currentQuestionIndex + 1].answer,
              () {
                answerQuestion(answers[currentQuestionIndex + 1].answer);
              },
            ),
          ],
        ),
      ),
    );
  }
}
