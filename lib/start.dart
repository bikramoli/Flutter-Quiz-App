import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final startx;
  Start(this.startx);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
                'Use the Quiz app to learn anything, anywhere. You can study on your own or engage in group quizzes, assignments, and presentations—in person, the core aims of this app is to help people and student with regular practice kit in various field like health, science, social etc'),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.teal
                  .shade300, // color for button e.g: teal or teal.shade200, or teal[300] etc..
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white, fontSize: 50),
                textAlign: TextAlign.center,
              ),
              onPressed: startx,
            ),
            RaisedButton(
              child: Text('About us',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center),
              onPressed: null,
            )
          ],
        ));
  }
}
