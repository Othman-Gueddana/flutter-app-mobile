import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "you are awsome";
    } else if (resultScore <= 12) {
      resultText = 'pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'you are strange!?';
    } else {
      resultText = 'you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 30),
              ),
              textColor: Colors.blue,
            )
          ]),
    );
  }
}
