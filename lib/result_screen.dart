import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restartQuiz,
      {super.key, required this.selectedAnswer});
  final List<String> selectedAnswer;
  final void Function() restartQuiz;

  
  List<Map<String, Object>> get summeryData {
    List<Map<String, Object>> data = [];
    for (var i = 0; i < selectedAnswer.length; i++) {
      data.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_ans': questions[i].ans[0],
        'selected_ans': selectedAnswer[i]
      });
    }
    return data;
  }

  @override
  Widget build(context) {
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summeryData
        .where((data) => data['correct_ans'] == data['selected_ans'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectQuestion out of $numTotalQuestion questions correctly'),
            const SizedBox(height: 30),
            QuestionSummery(summeryData),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: restartQuiz,
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
