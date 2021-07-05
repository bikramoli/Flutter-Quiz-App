import 'package:flutter/material.dart';
import './quiz.dart';
import './alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var number = 0;
  void answer2() {
    setState(() {
      number = number + 1;
    });
    print(number);
  }

  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What is your favourate animal?',
        'answers': ['Dog', 'Cat', 'Horse'],
      },
      {
        'questionText': 'What is your favourate game?',
        'answers': ['Football', 'Cricket', 'Basketball', 'Tennis'],
      },
      {
        'questionText': 'What is your favourate Colour?',
        'answers': ['Blue', 'Black', 'Red', 'white'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Text(
            'Bikram Quiz App',
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        )),
        body: number < _questions.length
            ? Quiz(
                answer2: answer2,
                questions: _questions,
                number: number,
              )
            : Alert(),
      ),
    );
  }
}
