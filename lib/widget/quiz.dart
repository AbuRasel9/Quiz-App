import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //start app first go to start screen
  var activeScreen="start-screen";



//if start quiz button click than go to question screen
  void switchScreen(){

    setState(() {
      activeScreen =  "questions-screen";


    });

    }

  @override
  Widget build(BuildContext context){
    Widget screenWidget=StartScreen(switchScreen);
    if(activeScreen=='questions-screen'){

      screenWidget=const QuestionScreen();
    }


    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: screenWidget

      ),
    );
  }
}
