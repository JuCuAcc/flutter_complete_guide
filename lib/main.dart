import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';


// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override

  /// State<MyApp> createState() => _MyAppState();
  State<StatefulWidget> createState() => _MyAppState();

  /// State<StatefulWidget> createState() => MyAppState();

  /// Why Underscore is showing Error?
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
    {'questionText': '\n\t\tWhat\'s your favourite color?\n',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },

    {'questionText': '\n\t\tWhat\'s your favourite animal?\n',
      /// 'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1}
      ],

    },


    {'questionText': '\n\t\tWhat\'s your favourite language?\n',
      /// 'answers': ['C#', 'Java', 'Python', 'Q#'],
      'answers': [
        {'text': 'C#', 'score': 10},
        {'text': 'Java', 'score': 5},
        {'text': 'Python', 'score': 3},
        {'text': 'Q#', 'score': 1}
      ],

    },


    {'questionText': '\n\t\tWhat\'s your favourite instructor?\n',
     /// 'answers': ['Jashim', 'Rahim', 'Karim', 'Hakim'],
      'answers': [
        {'text': 'Jashim', 'score': 10},
        {'text': 'Rahim', 'score': 5},
        {'text': 'Karim', 'score': 3},
        {'text': 'Hakim', 'score': 1}
      ],
    },


    {'questionText': '\n\t\tDo you love what you do?\n',
      /// 'answers': ['Yes', 'No', 'May Be', 'Somewhat'],
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 5},
        {'text': 'May Be', 'score': 3},
        {'text': 'Somewhat', 'score': 1}
      ],
    },


    {'questionText': '\n\t\tDo you actually love what you do?\n',
      /// 'answers': ['Yes', 'No', 'May Be', 'Somewhat'],
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 5},
        {'text': 'May Be', 'score': 3},
        {'text': 'Somewhat', 'score': 1}
      ],
    },

  ];


  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;

      /*if (_questionIndex > 5) {
        _questionIndex = 0;
      }*/

      if(_questionIndex < _questions.length){
        print('You have more questions!');
      } else{
        print('No More Questions!');
      }

    });

    /// print('Answer Chosen! ');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    /// var dummy = const ['Hello'];
    /// dummy.add('Jashim');
    /// print(dummy);
    /// dummy = [];

    // questions = []; // does not work if questions is a const

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          buttonTheme: ButtonThemeData(
              //       shape: ,
              minWidth: 20,
              height: 50,
              buttonColor: Colors.limeAccent,
              splashColor: Colors.redAccent)),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(
                color: Colors.lightGreenAccent,
                fontWeight: FontWeight.bold,
                fontSize: 50),
          ),

          /// backgroundColor: Colors.greenAccent[500],
          /// backgroundColor: Colors.tealAccent[500],
          centerTitle: true,
          backgroundColor: Colors.black,

          /// actionsIconTheme: IconThemeData(color: Colors.green, size: 36),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
        ),
    );
  }
}
