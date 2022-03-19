import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(question,
          style: const TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
          textAlign: TextAlign.center),
    );
  }
}
