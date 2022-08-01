import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
      'Question 11111111',
      'Question 22222222',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first app'),
            ),
            body: Column(
              children: [
                Question(questions[questionIndex]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: () => onBtnClick(),
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () => onBtnClick(),
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () => onBtnClick(),
                ),
              ],
            )));
  }
}