import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: MaterialButton(
        color: Colors.amberAccent,
        splashColor: Colors.amber.shade900,
        highlightColor: Colors.amber.shade700,
        minWidth: 200,
        height: 40,
        textColor: Colors.black,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
