import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var _question = [
    'What is your favarite animal ?',
    'What is your favorite color ?',
  ];
  void _AnsQues() {
    setState(() {
      _questionIndex += 1;
      if (_questionIndex == _question.length) {
        _questionIndex = 0;
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
            child: Column(
              children: [
                Question(
                  _question[_questionIndex],
                ),
                Answer(_AnsQues),
                Answer(_AnsQues),
                Answer(_AnsQues),
              ],
            ),
          ),
          backgroundColor: Colors.cyan[100],
        ));
  }
}
