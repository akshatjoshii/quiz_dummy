import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final Map answer;

  Answer(this.answerQuestion, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      child: RaisedButton(
        child: Text(
          answer['text'],
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          answerQuestion(answer["score"]);
        },
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
