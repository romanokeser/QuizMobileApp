import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String questionText;
  //'final' tells Dart that this value will never change after its initialization

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //full width of device
      margin: EdgeInsets.all(15), //spacing around the container
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
