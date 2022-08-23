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

class _MyAppState extends State <_MyApp>{
  var _questionIndex = 1;
  void _AnsQues(a) {
    setState(() {
      _questionIndex += 1;
       if(_questionIndex == a.length){
        _questionIndex=0;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    var _question = ['What is your favarite animal ?',
                    'What is your favorite color ?',];
    return MaterialApp(

      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('First App'),
            ),
            body: Center(
              child: Column(
                children: [
                  Question(_question[_questionIndex],
                  ),
                  ElevatedButton(onPressed: () => _AnsQues,
                    child: Text('Option 3'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor:Colors.cyan[100],
        )
    );
  }
}