import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final Function restart;

  Result(this.score, this.restart);

  String get resultPhrase {
    String text;
    if (score <= 9)
      text = 'You Are Awesome';
    else if (score <= 18)
      text = 'You Are Cool';
    else
      text = 'You Are OK';

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: restart,
          child: Text(
            'Restart Quiz',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
