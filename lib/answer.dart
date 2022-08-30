import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() handler;
  final String answerText;
  Answer(this.handler , String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: handler,
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          onPrimary: Colors.white, // changes text colour
        ),
      ),
    );
  }
}
