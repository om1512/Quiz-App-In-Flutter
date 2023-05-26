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
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'].toString(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['selected_ans'].toString(),
                      ),
                      Text(
                        data['correct_ans'].toString(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
