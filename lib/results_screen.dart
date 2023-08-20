import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, this.startQuiz, {super.key});

  final List<String> chosenAnswers;
  final void Function() startQuiz;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'user_answer': chosenAnswers[i],
        'answer_letter': answers
            .firstWhere((element) => chosenAnswers[i] == element.answer)
            .letter
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final finalData = summaryData;

    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 33, 190, 128),
                  size: 40.0,
                ),
                SizedBox(width: 15),
                Text(
                  'Linguagens do Amor',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 33, 190, 128),
                  size: 40.0,
                ),
              ],
            ),
            const SizedBox(height: 30),
            ...loves.map(
              (love) {
                return Row(children: [
                  Image.asset(
                    'assets/images/${love['letter']}.png',
                    width: 40,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${love['title']}:',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      finalData
                          .where((data) =>
                              (data['answer_letter'] as String) ==
                              (love['letter'] as String))
                          .length
                          .toString(),
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]);
              },
            ).toList(),
            const SizedBox(height: 30),
            QuestionsSummary(finalData),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 245, 228, 188),
                backgroundColor: const Color.fromARGB(255, 33, 190, 128),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Refazer Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
