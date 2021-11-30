import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(After_Main());
// }

class After_Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return After_MainState();
  }
}

class After_MainState extends State<After_Main> {
  final _questions = const [
    {
      'questionText':
          'The word "jungle" comes from a Sanskrit word, but what does it mean?',
      'answers': [
        {'text': 'Wet forest', 'score': 0},
        {'text': 'Uncultivated land', 'score': 1},
        {'text': 'Green land', 'score': 0},
        {'text': 'Place of tigers', 'score': 0},
      ],
    },
    {
      'questionText':
          'What percent of the worlds animals live in a jungle environment?',
      'answers': [
        {'text': 'Over 10%', 'score': 0},
        {'text': 'Over 40%', 'score': 0},
        {'text': 'Over 50%', 'score': 1},
        {'text': 'Over 60%', 'score': 0},
      ],
    },
    {
      'questionText': 'Who wrote "The Jungle Book"?',
      'answers': [
        {'text': 'JK Rowling', 'score': 0},
        {'text': 'CS Lewis', 'score': 0},
        {'text': 'Jacequeline Wilson', 'score': 0},
        {'text': 'Rudyard Kipling', 'score': 1},
      ],
    },
    {
      'questionText': 'Where in the world do tigers live? ',
      'answers': [
        {'text': 'Africa', 'score': 0},
        {'text': 'South America', 'score': 0},
        {'text': 'Europe', 'score': 0},
        {'text': 'Asia', 'score': 1},
      ],
    },
    {
      'questionText': 'How much time do Sloths spend sleeping in a day? ',
      'answers': [
        {'text': '10 Hours', 'score': 0},
        {'text': '20 Hours', 'score': 1},
        {'text': '2 hours', 'score': 0},
        {'text': '10 Minutes', 'score': 0},
      ],
    },
    {
      'questionText': 'what are the largest snakes in the world? ',
      'answers': [
        {'text': 'White anacondas', 'score': 0},
        {'text': 'Titanoboa', 'score': 0},
        {'text': 'Cobra', 'score': 1},
        {'text': 'Black Mamba', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.lightGreen.shade400),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Jungle, Quiz Time !!',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
