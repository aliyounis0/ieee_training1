import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class answer  extends StatelessWidget {
  final Function selectHander;
  final String answerText;
  answer(this.selectHander,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    color: Colors.blue,
  margin: EdgeInsetsDirectional.all(10),
  child:TextButton(
  onPressed:selectHander,
  child: Text(answerText,
  style: TextStyle(
  color: Colors.white,
  ),),
  ),
  );
  }
}
