import 'package:flutter/cupertino.dart';
import 'package:ieee/shared/question.dart';

import 'answers.dart';

class  quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final  int questionIndex ;
  quiz(
      @required this.questions,
      @required  this.answerQuestion,
      @required  this.questionIndex,

      );

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
    question(questions[ questionIndex]["questionText"]),
  ...(questions[questionIndex]["ansers"] as List<Map<String,Object>>).map((value)
  {
  return answer(()=>answerQuestion(value["score"]),value["text"]);
  }).toList()

  ],
  );
  }
}
