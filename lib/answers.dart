import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFuntion;
  final String answer;

  Answer(this.answerFuntion, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer),
        onPressed: answerFuntion,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
