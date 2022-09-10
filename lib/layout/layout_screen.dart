import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ieee/shared/answers.dart';
import 'package:ieee/shared/question.dart';
import 'package:ieee/shared/quiz.dart';
import 'package:ieee/shared/result.dart';

class layout  extends StatefulWidget {


  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {

  int questionIndex=0;
  int totleScore=0;
  void  answerQuestion(int score)
  {
    totleScore+=score;
    setState(() {
      questionIndex++;
    });
  }
  void resetQuiz (){
    setState(() {
       questionIndex=0;
       totleScore=0;
    });
}
  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
        "questionText": "what's your favorite color",
        "ansers": [
          {'text': 'red', 'score': 10},
          {'text': 'green', 'score': 5},
          {'text': 'blue', 'score': 3},
          {'text': 'black', 'score': 1},

        ],
      },
      {
        "questionText": "what's your favorite color",
        "ansers": [
          {'text': 'lion', 'score': 3},
          {'text': 'snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Rabbit', 'score': 9},

        ],
      },
      {
        "questionText": "what's your favorite color",
        "ansers": [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
        ],
      },
    ];


    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: questionIndex < questions.length ? quiz(questions,
            answerQuestion,
            questionIndex) : result(totleScore,resetQuiz)
    );
  }
}
