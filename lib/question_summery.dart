import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery(this.data, {super.key});
  final List<Map<String, Object>> data;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: data.map((data) {
            return Container(
              margin:const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Text(((data['question_index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          data['question'].toString(),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['selected_ans'].toString(),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          data['correct_ans'].toString(),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
