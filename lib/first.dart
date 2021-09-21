import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/result.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'login.dart';


main() => runApp(First());

class First extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
Color w=Colors.white;
Color b=Colors.black;

class MyAppState extends State<First> {


  int _totalScore=0;
  int num0=0, num1=0, num2=0,num3=0;
  bool isSwitch=false;

   final List<Map<String, Object>> _question = [
    {
      'questiontext': 'What\'s Your Favorite color?',
      'answers': [
        {'text':'Black','score':10},
        {'text':'Green','score':20},
        {'text':'Blue','score':30},
        {'text':'Yellow','score':40},
      ]
    },
    {
      'questiontext': 'What\'s Your Favorite Animal?',
      'answers': [
        {'text':'Rabbit','score':10},
        {'text':'Monkey', 'score':20},
        {'text':'Tiger', 'score':30},
        {'text':'Lion','score':40},
      ]
    },
    {
      'questiontext': 'What\'s Your Favorite instructor?',
      'answers': [
        {'text':'Ziad','score':10},
        {'text':'Mohamed','score':20},
        {'text':'Ali','score':30},
        {'text':'Anas','score':40},
      ]
    },
  ];

  void _restQuiz(){
    setState(() {
      questionIndex=0;
      _totalScore=0;
      num0=0;
      num1=0;
      num2=0;
      num3=0;
    });
  }

  void answer(score) {
    if(questionIndex==0)num0=score;
    else if(questionIndex==1)num1=score;
    else if(questionIndex==2)num2=score;
    else if(questionIndex==3)num3=score;
    _totalScore+=score;
    setState(() {
      questionIndex += 1;
    });

    print("_questionIndex =$questionIndex");
    print("num0 =$num0");
    print("num1 =$num1");
    print("num2 =$num2");
    print("num3 =$num3");
    print("_totalScore =$_totalScore");
    print("Answer choosen!");
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar:AppBar(
        title: Text("Quiz App",style: TextStyle(color: w),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: <Widget>[
          Switch(
            value: isSwitch,
            onChanged: (value){
              setState(() {
                isSwitch=value;
                print(isSwitch);
                if(isSwitch==true){b=Colors.white; w=Colors.black;}
                if(isSwitch==false){b=Colors.black; w=Colors.white;}
              });
            },
            activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.black,
          ),
        ],
      ),
      body:Container(
        color: w,
        child:questionIndex < _question.length
            ? Quiz(_question,questionIndex,answer)
            :Result(_restQuiz,_totalScore),
      ),

    // Back page by page   """"""""""""""""


    floatingActionButton: FloatingActionButton(
    child: Icon(Icons.arrow_back,color: w,size: 40,),
    onPressed: (){
    if(questionIndex==1)_totalScore-=num0;
    if(questionIndex==2)_totalScore-=num1;
    if(questionIndex==3)_totalScore-=num2;
    if(questionIndex==4)_totalScore-=num3;

    setState(() {
    if(questionIndex>0){ questionIndex--;}

    });

    print("_questionIndex =questionIndex");
    print("num0 =$num0");
    print("num1 =$num1");
    print("num2 =$num2");
    print("num2 =$num3");
    print("_totalScore =$_totalScore");
    },
    ),
      ),
    );
  }
}