import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'login.dart';



main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
Color w=Colors.white;
Color b=Colors.black;
int questionIndex = 0;
class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }}