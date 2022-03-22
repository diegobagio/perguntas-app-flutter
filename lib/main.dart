import 'package:flutter/material.dart';
import 'package:project1/answer.dart';
import 'package:project1/question.dart';

var _selectedQuestion = 0;

void main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'question': 'Feijão por cima ou por baixo do arroz?',
        'answers': ['Por cima', 'Por baixo', 'Nenhuma das alternativas']
      },
      {
        'question': 'Palmeiras é o melhor time do Brasil?',
        'answers': ['Sim', 'Com certeza', 'Certamente']
      },
      {
        'question': 'Cachorro ou gato?',
        'answers': ['Cachorro', 'Gato', 'Não gosto de animais']
      }
    ];

    void _setAnswer() {
      setState(() {
        _selectedQuestion++;
      });
    }

    bool hasQuestions() {
      return _selectedQuestion < questions.length;
    }

    List<String> listAnswer =
        hasQuestions() ? questions[_selectedQuestion].cast()['answers'] : [];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas e Respostas'),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: hasQuestions()
                ? Card(
                    color: Color.fromARGB(255, 54, 94, 155),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Question(questions[_selectedQuestion]['question']
                            .toString()),
                        ...listAnswer
                            .map((answer) => Answer(answer, _setAnswer))
                            .toList()
                      ],
                    ))
                : Container(
                    color: Color.fromARGB(255, 35, 184, 60),
                    child: Center(
                        child: Text('Sucesso!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 40))),
                  ),
          )),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}
