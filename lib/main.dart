import 'package:flutter/material.dart';
import './Quiz.dart';
import './result.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  final _question = const [
    {
      'questionText': 'What is your favarite animal ?',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'rabbit', 'score': 5},
        {'text': 'dog', 'score': 7},
        {'text': 'cat', 'score': 8}
      ],
    },
    {
      'questionText': 'What is your favorite color ?',
      'answer': [
        {'text': 'green', 'score': 12},
        {'text': 'blue', 'score': 9},
        {'text': 'black', 'score': 4},
        {'text': 'grey', 'score': 5}
      ],
    },
    {
      'questionText': 'What is your favarite brand ?',
      'answer': [
        {'text': 'Dell', 'score': 4},
        {'text': 'HP', 'score': 7},
        {'text': 'Apple', 'score': 10},
        {'text': 'Asus', 'score': 7}
      ],
    },
    {
      'questionText': 'Who\'s your favarite actor ?',
      'answer': [
        {'text': 'srk', 'score': 10},
        {'text': 'sallu', 'score': 5},
        {'text': 'sanju', 'score': 7},
        {'text': 'hrx', 'score': 8}
      ],
    },
  ];

  int _totalScore = 0;
  void _AnsQues(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
      if (_questionIndex < _question.length) {
        print("Question is displaying");
      } else {
        print("Survey is done");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Center(
              child: _questionIndex < _question.length
                  ? Quiz(
                      AnsQues: _AnsQues,
                      question: _question,
                      questionIndex: _questionIndex,
                    )
                  : result(_totalScore)),
          backgroundColor: Colors.cyan[100],
        ));
  }
}
