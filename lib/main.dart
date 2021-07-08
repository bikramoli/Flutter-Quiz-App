import 'package:flutter/material.dart';
import 'package:flutter_first_app/questions.dart';
import 'package:flutter_first_app/start.dart';
import './quiz.dart';
import './alert.dart';
import './start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var number = 0;
  var totalScore = 0;

  void reset() {
    setState(() {
      number = 0;
      totalScore = 0;
    });
  }

  void answer2(int score) {
    setState(() {
      totalScore = totalScore + score;
      number = number + 1;
    });
    print(number);
  }

  void start() {
    setState(() {
      number = 1;
    });
  }

  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What is your favourate animal?',
        'answers': [
          {'Text': 'Dog', 'score': 10},
          {'Text': 'Cat', 'score': 20},
          {'Text': 'Horse', 'score': 30}
        ],
      },
      {
        'questionText': 'Who is your favourate football players?',
        'answers': [
          {'Text': 'CR7', 'score': 10},
          {'Text': 'Messi', 'score': 20},
          {'Text': 'David', 'score': 30},
          {'Text': 'Nymar', 'score': 40}
        ],
      },
      {
        'questionText': 'What is your favourate fruit?',
        'answers': [
          {'Text': 'Apple', 'score': 10},
          {'Text': 'Grapes', 'score': 20},
          {'Text': 'Watermelon', 'score': 30},
          {'Text': 'Mango', 'score': 40},
          {'Text': 'Berries', 'score': 30}
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        )),
        body: number == 0
            ? Start(start)
            : number < _questions.length
                ? Quiz(
                    answer2: answer2,
                    questions: _questions,
                    number: number,
                  )
                : Alert(totalScore, reset),
      ),
    );
  }
}
