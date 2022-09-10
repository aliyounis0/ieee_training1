import 'package:flutter/cupertino.dart';

class question extends StatelessWidget {
  final String questionText;
  question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    margin: EdgeInsetsDirectional.all(10),
  child: Text(questionText,
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  textAlign: TextAlign.center,),
  ) ;
  }
}
