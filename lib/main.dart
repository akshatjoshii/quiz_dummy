import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': "What's your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'White', 'score': 2},
        {'text': 'Saffron', 'score': 1},
      ],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {'text': 'Elephant', 'score': 8},
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Snake', 'score': 6},
        {'text': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': "Who's your favourite instructor?",
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Andrew', 'score': 10},
        {'text': 'Addy Osmani', 'score': 10},
        {'text': 'Mosh', 'score': 10}
      ],
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;
  void answerQuestion(score) {
    // print("Answering Question");
    _totalScore += score;
    setState(() {
      if (questionIndex < questions.length) {
        questionIndex = questionIndex + 1;
      }
    });
  }

  void resetQuestion() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is First App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
              )
            : Result(_totalScore, resetQuestion),
      ),
    );
  }
}
