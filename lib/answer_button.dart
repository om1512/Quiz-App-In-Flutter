import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.ans,
    required this.onTap,
  });
  final String ans;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 40,
          ),
          backgroundColor: Color.fromARGB(255, 70, 21, 219),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(
        ans,
        style: const TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
