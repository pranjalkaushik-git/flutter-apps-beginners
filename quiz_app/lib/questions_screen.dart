import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questionsData.dart';

class QuestionsScreen extends StatefulWidget{

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreen();
  }

}


class _QuestionsScreen extends State<QuestionsScreen>{


  @override
  Widget build(context) {

    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Text(currentQuestion.questionText,
       style: TextStyle(
        color: Colors.white
       ),
       ) ,
       SizedBox(
        height: 30,
       ),
       ...currentQuestion.answers.map((answer){
          return AnswerButton(answerText: answer, onTap: (){});
       }),
       AnswerButton(answerText: currentQuestion.answers[0], onTap: (){}),
       AnswerButton(answerText: currentQuestion.answers[1], onTap: (){}),
       AnswerButton(answerText: currentQuestion.answers[2], onTap: (){}),
       AnswerButton(answerText: currentQuestion.answers[3], onTap: (){}),
      ],
      )
    );
  }
}