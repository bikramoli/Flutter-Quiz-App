import 'package:flutter/material.dart';
import './questions.dart';

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
    number = number + 1;
    print(number);
  }

  void reset() {
    number = 0;
  }

  Widget build(BuildContext context) {
    var questions = [
      'What is your name?',
      'How old are you?',
      'Name of birthplace?',
      'What is your school name?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is appbar'),
        ),
        body: Column(
          children: [
            Questions(questions[number]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('this is correct one...!!!'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answer2,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('this is anonymus function..!!');
              },
            ),
            RaisedButton(
              child: Text('Reset'),
              onPressed: reset,
            ),
          ],
        ),
      ),
    );
  }
}
