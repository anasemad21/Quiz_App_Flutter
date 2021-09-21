import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget{
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answer;

  Quiz( this.question, this.questionIndex, this.answer);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Question(question[questionIndex]['questiontext']),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((ans) {
          return Answer(ans['text'],() => answer(ans['score']));
        }).toList(),
      ],
    );
  }
}