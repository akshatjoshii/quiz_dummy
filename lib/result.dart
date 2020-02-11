import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuestion;
  Result(this.totalScore, this.resetQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            "Congratulations, you won!" + totalScore.toString(),
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text('Reset'),
          textColor: Colors.blue,
          onPressed: resetQuestion,
        )
      ],
    );
  }
}
