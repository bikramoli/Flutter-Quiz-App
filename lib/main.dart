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
      {},
      {
        'questionText': 'What is full form of RAM?',
        'answers': [
          {'Text': 'Read And Memory', 'score': 0},
          {'Text': 'Random Access Memory', 'score': 10},
          {'Text': 'Range Analizer Machine', 'score': 0}
        ],
      },
      {
        'questionText': 'Whose face was said to have launched 1000 ships?',
        'answers': [
          {'Text': 'Gangesh Khan', 'score': 0},
          {'Text': 'Helen of Troy', 'score': 10},
          {'Text': 'David', 'score': 0},
          {'Text': 'Albert Dcarpio', 'score': 0}
        ],
      },
      {
        'questionText':
            'Water boils at 212 degrees on which temperature scale?',
        'answers': [
          {'Text': 'Fahrenheit', 'score': 10},
          {'Text': 'Celcius', 'score': 0}
        ],
      },
      {
        'questionText':
            'Born in the 16th Century in Devon, England, his career was linked to tobacco and potatoes, and he was imprisoned in the Tower of London. Who was this?',
        'answers': [
          {'Text': 'Newton', 'score': 0},
          {'Text': 'Dr. Henry Mathon', 'score': 0},
          {'Text': 'Sir Walter Raleigh', 'score': 10},
          {'Text': 'Charls Smith', 'score': 0},
          {'Text': 'Brock E.', 'score': 0}
        ],
      },
      {
        'questionText': 'Info.cern.ch is famous for being what?',
        'answers': [
          {'Text': 'The world’s very first website', 'score': 10},
          {'Text': 'Dr. Henry Mathon', 'score': 0},
          {'Text': 'Sir Walter Raleigh', 'score': 10},
          {'Text': 'Charls Smith', 'score': 0},
          {'Text': 'Brock E.', 'score': 0}
        ],
      },
      {
        'questionText':
            'Which type entertainment has cars but no roads, curves but no figure, and white knuckles?',
        'answers': [
          {'Text': 'Roller coaster', 'score': 10},
          {'Text': 'F1 Racing', 'score': 0},
        ],
      },
      {
        'questionText':
            'Name the British lady who played a role in the Crimean War, and who received the Order of Merit in 1907?',
        'answers': [
          {'Text': 'Lady Augusta', 'score': 0},
          {'Text': 'Queen Elizabeth', 'score': 0},
          {'Text': 'Dr Rushel', 'score': 0},
          {'Text': 'Charls Smith', 'score': 0},
          {'Text': 'Florence Nightingale', 'score': 10}
        ],
      },
      {
        'questionText':
            'Name the Corsican who captured Toulon and who sold Louisiana to Americ?',
        'answers': [
          {'Text': 'Napoleon Bonaparte', 'score': 10},
          {'Text': 'Dr. Henry Mathon', 'score': 0},
          {'Text': 'Sir Walter Raleigh', 'score': 0},
          {'Text': 'Charls Smith', 'score': 0},
          {'Text': 'Brock E.', 'score': 0}
        ],
      },
      {
        'questionText': 'Which sea creature has three hearts?',
        'answers': [
          {'Text': 'Blue Whale', 'score': 0},
          {'Text': 'Octopus', 'score': 10},
          {'Text': 'Shark', 'score': 0},
          {'Text': 'Starfish', 'score': 0},
          {'Text': 'Dolphine', 'score': 0}
        ],
      },
      {
        'questionText': 'What is the world’s biggest spider?',
        'answers': [
          {'Text': 'Osculate', 'score': 0},
          {'Text': 'Giant speior', 'score': 0},
          {'Text': 'Goliath birdeater tarantula', 'score': 10},
          {'Text': 'Mostorata', 'score': 0},
          {'Text': 'orckin.', 'score': 0}
        ],
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
