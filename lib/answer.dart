import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  Answer(this.text, this.onSelected);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle styleButton =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: styleButton, child: Text(text), onPressed: onSelected));
  }
}
