import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final startx;
  Start(this.startx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text('Start'),
          onPressed: startx,
        )
      ],
    );
  }
}
