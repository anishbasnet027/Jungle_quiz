import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText = 'Bad score, you got all wrong !';
    } else if (resultScore == 1) {
      resultText = 'You got 1 right out of 6 questions, Try Harder !';
    } else if (resultScore == 2) {
      resultText =
          'You got 2 right out of 6 questions, Average, Try Harder !! ';
    } else if (resultScore == 3) {
      resultText = 'Average score, You got 3 right out of 6 questions';
    } else if (resultScore == 4) {
      resultText = 'Good score, You got 4 right out of 6 questions. Nice Job !';
    } else if (resultScore == 5) {
      resultText =
          'Great score, You got 4 right out of 6 questions. Nice Job !';
    } else {
      resultText = 'Excellent score, you got all right, Great Job !!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
          Image.asset('images/finish.png'),
          Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'accelerateEasing',
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
          MaterialButton(
            color: Colors.amber,
            child: Text(
              'Try Again',
            ),
            textColor: Colors.black,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
