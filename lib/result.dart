import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;
  result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 25) {
      resultText = 'You are wierd';
    } else if (resultScore <= 30){
      resultText = "You are Strange";
    } else if (resultScore <= 40) {
      resultText = "You are likeable";
    } else
      resultText = "You are very likeable";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
        Text(resultScore.toString()),
    ],
    );
  }
}
