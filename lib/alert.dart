import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final resultScore;
  final reset;

  Alert(this.resultScore, this.reset);

  String get resultPhrase {
    var resultText = resultScore.toString();
    if (resultScore <= 30) {
      resultText = ('You are awsome because your score is:-');
    } else if (resultScore <= 40) {
      resultText = ('Pretty likeable because your score is:-');
    } else if (resultScore <= 60) {
      resultText = ('You are strange because your score is:-');
    } else {
      resultText = ('You are so bad because your score is:-');
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              resultPhrase,
              // 'Congrate your score is' + ' ' + resultScore.toString(),
              style: TextStyle(
                  fontFamily: 'RobotoMono', fontSize: 30, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            Text(
              resultScore.toString(),
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontFamily: 'RobotoMono',
              ),
            ),
            OutlineButton(
              borderSide: BorderSide(
                  color: Colors.blue), //for adding color in button borders
              child: Text(
                'Play again',
                style: TextStyle(fontSize: 20, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              onPressed: reset,
            )
          ],
        ));
  }
}
// style: TextStyle(fontFamily: 'RobotoMono')