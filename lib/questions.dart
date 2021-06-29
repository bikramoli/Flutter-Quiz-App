import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionTexts;

  Questions(this.questionTexts);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionTexts,
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
