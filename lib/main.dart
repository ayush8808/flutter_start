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
    {'question':'What is your favarite animal ?',
    'answer':['Lion','rabbit','dog','cat'],},

    {'question':'What is your favorite color ?',
    'answer':['green','blue','black','yellow'],},

    {'question':'What is your favarite brand ?',
    'answer':['Dell','HP','Apple','Asus'],},

    {'question':'Who\'s your favarite actor ?',
    'answer':['srk','sallu','sanju','hrx'],},
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
                 _question[_questionIndex]['question'].toString(),
                ),
                ...(_question[_questionIndex]['answer'] as List<String>).map((answer){
                  return Answer(_AnsQues,answer);
                }).toList()
              ],
            ),
          ),
          backgroundColor: Colors.cyan[100],
        ));
  }
}
