import 'package:flutter/material.dart';


class Answer extends StatelessWidget{
  final String textAnswer;
  final Function x;
  Answer(this.textAnswer,this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(textAnswer,style: TextStyle(fontSize: 25),),
        onPressed: x,
      ),
    );
  }
}