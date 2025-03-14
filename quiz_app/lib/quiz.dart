import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{

  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}


class _QuizState extends State<Quiz>{

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';



  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context){
    Widget? screenWidget;
    if(activeScreen == 'start-screen'){
     screenWidget = StartScreen(switchScreen);}
    else{
     screenWidget = QuestionsScreen();
    }


    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168)
                ]
              )
            ),
            child: screenWidget,
            ),
      ),
    );
  }
}