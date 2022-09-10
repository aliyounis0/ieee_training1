import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
final int resultScore ;
final Function resetQuiz ;
result(this.resultScore,this.resetQuiz);

String get resultPhrase{
  var resultText;
  if(resultScore<=8){
    resultText= "You are awesome and inn0cent";
  } else if(resultScore<=12){
    resultText="pretty likeable";
  }else if(resultScore<=16){
    resultText="You are....strang?!";
  } else {
    resultText="You are so bad";
  }
return resultText;
}

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(resultPhrase,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,),
            FlatButton(
                onPressed: resetQuiz,
                child: Text("Reset Quiz"),
              textColor: Colors.blue,
            ),
          ],
        ),
    );
  }
}
