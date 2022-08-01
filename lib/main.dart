import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void onBtnClick() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      //using map
      {
        'questionText': 'Question 11111111',
        'answers': ['Answer bb', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'Question 2222222222222',
        'answers': ['Black', 'Red', 'White', 'Hhh']
      },
      {
        'questionText': 'Question 333333333333',
        'answers': ['Red', 'Black', 'White', 'Green']
      },
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first app'),
            ),
            body: Column(
              children: [
                Question(questions[questionIndex]['questionText']),
                ...(questions[questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(onBtnClick, answer);
                }).toList()
              ],
            )));
  }
}
