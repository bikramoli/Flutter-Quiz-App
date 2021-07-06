import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final resultScore;
  final reset;

  Alert(this.resultScore, this.reset);

  //String get resultPhrase {
  //var resultText = resultScore.toString();
  // if (resultScore <= 8) {
  //   resultText = ('You are awsome' + resultScore.toString());
  // } else if (resultScore <= 12) {
  //   resultText = ('Pretty likeable' + resultScore.toString());
  //  } else if (resultScore <= 16) {
  //   resultText = ('You are strange' + resultScore.toString());
  //  } else {
  //   resultText = ('You are so bad' + resultScore.toString());
  // }
  //return resultText;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Congrate your score is' + ' ' + resultScore.toString(),
          style: TextStyle(fontSize: 30, color: Colors.red),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          child: Text(
            'Go to first page',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          onPressed: reset,
        )
      ],
    );
  }
}
