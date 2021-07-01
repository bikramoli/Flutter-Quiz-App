import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Congratulation you are done now..!!!',
          style: TextStyle(fontSize: 30, color: Colors.red),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          child: Text(
            'Go to first page',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          onPressed: null,
        )
      ],
    );
  }
}
