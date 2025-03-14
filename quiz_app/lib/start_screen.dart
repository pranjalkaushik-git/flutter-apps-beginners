import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{

  const StartScreen({super.key});

  @override 
  Widget build(context){
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',width: 300,
            color: const Color.fromARGB(150, 255, 255, 255)
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            style:TextStyle(
              color: Colors.white,
              fontSize: 24
            ),
            'Learn Flutter the Fun way !'
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: (){}, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            label: Text(
              'Start Quiz'
            ),
            icon: Icon(Icons.arrow_right_alt),
            )

        ],
        )
      );
  } 
}