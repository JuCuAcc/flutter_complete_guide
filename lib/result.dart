import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 20){
      resultText = 'You are awesome and innocent!';
    } else if(resultScore <= 30){
      resultText = 'Pretty Likeable!';
    }else if(resultScore <= 60){
      resultText = 'You are ... strange?!';
    } else{
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250, bottom: 30, left: 20),
            child: Text(
              resultPhrase,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 36,
                /// textAlign: TextAlign.center,
              ),
            ),
          ),
        ),

        FlatButton(
          child: Text('Restart Quiz!',
            style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          ),
          textColor: Colors.green,
          onPressed: resetHandler,
        )
      ],
    );
  }
}

