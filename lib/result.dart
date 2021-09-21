import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget{
  final Function q;
  final int resultScore;
  Result(this.q,this.resultScore);

  String get resultPhrase{
    String resultText;
    if(resultScore>=70){
      resultText="You Are Awesome !";
    }
    else if(resultScore>=40){
      resultText="Pretty ! ";
    }
    else{
      resultText="You are so bad";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget> [
          Text(
           resultPhrase,
            style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            "Your Score is $resultScore",
            style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed:q,
              child: Text(
                "Restart The App",
                style: TextStyle(fontSize: 30,color: Colors.blue),
              ),
          ),
        ],
      ),
    );
  }
}