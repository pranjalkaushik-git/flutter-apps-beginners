import 'package:flutter/material.dart';

//stateless class HomepageBanner
class HomepageBanner extends StatelessWidget{

  //constructuor function
  const HomepageBanner({super.key});

  void loginButton(){
  }
  
  //build method
  @override  
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',height: 300,),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Learn Flutter the fun way',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: loginButton,
          child:Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.white
              ),
            )
          )
      ],
    );
  }

}