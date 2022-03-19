import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:project1/question.dart';

void main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  @override
  Widget build(BuildContext context) {
    var _selectedQuestion = 0;

    void setAnswer() {
      setState(() {
        _selectedQuestion++;
      });
    }

    final questions = [
      'Feijão por cima ou por baixo do arroz?',
      'Palmeiras é o melhor time do Brasil?',
      'Cachorro ou gato?'
    ];

    bool hasQuestions() {
      return _selectedQuestion > questions.length;
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas e Respostas'),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Card(
              color: Color.fromARGB(255, 54, 94, 155),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Question(questions[_selectedQuestion])],
              ),
            ),
          )),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}
