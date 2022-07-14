
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  /// final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText );

  @override
  Widget build(BuildContext context) {
    width:
    double.infinity;
    return SizedBox(
      width: 200,
      child: Container(
        margin: EdgeInsets.only(left: 50, bottom: 30),
        child: RaisedButton(
          padding: EdgeInsets.all(15.0),
          /* color: Colors.blue,
          textColor: Colors.white,*/

          color: Colors.black,
          textColor: Colors.greenAccent,


          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
